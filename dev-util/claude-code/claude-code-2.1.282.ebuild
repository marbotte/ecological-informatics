# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Claude Code - an agentic coding tool by Anthropic"
HOMEPAGE="https://claude.com/product/claude-code"

# NOTE(JayF): Claude code's official install method is now curl|bash
#             the script is simple: it fetches the latest version,
#             downloads a manifest of files for that version, and
#             downloads a single binary claude executable matching.
GCS_BUCKET="https://downloads.claude.ai/claude-code-releases"
SRC_URI="
	amd64? (
		elibc_glibc? ( ${GCS_BUCKET}/${PV}/linux-x64/claude -> claude-amd64-glibc-${PV} )
		elibc_musl?  ( ${GCS_BUCKET}/${PV}/linux-x64-musl/claude -> claude-amd64-musl-${PV} )
	)
	arm64? (
		elibc_glibc? ( ${GCS_BUCKET}/${PV}/linux-arm64/claude -> claude-arm64-glibc-${PV} )
		elibc_musl?  ( ${GCS_BUCKET}/${PV}/linux-arm64-musl/claude -> claude-arm64-musl-${PV} )
	)"
S="${WORKDIR}"

# NOTE(JayF): claude-code is only usable via paid subscription and has a
#             clickthrough EULA-type license. Please see $HOMEPAGE for
#             full details.
LICENSE="all-rights-reserved"
SLOT="0"
# NOTE: Local version bump ahead of the Gentoo tree (which is at 2.1.280).
#       Keyworded as testing because this release has not yet been
#       validated by the Gentoo maintainer. To install it, add to
#       /etc/portage/package.accept_keywords:
#         =dev-util/claude-code-2.1.282 ~amd64
#       (or ~arm64 on arm64 systems).
KEYWORDS="~amd64 ~arm64"
QA_PREBUILT="opt/bin/claude"

RDEPEND="sys-apps/ripgrep"

IUSE="cpu_flags_x86_avx cpu_flags_x86_avx2"
REQUIRED_USE="amd64? ( cpu_flags_x86_avx cpu_flags_x86_avx2 )"

RESTRICT="bindist mirror strip"

src_compile() {
	# Skip, nothing to compile here.
	:
}

src_install() {
	# NOTE(JayF) Literally the file we download is all there is to
	#            install. It's just a binary. No docs. Nothing else.
	exeinto /opt/bin
	newexe "${DISTDIR}/${A[0]}" claude

	insinto /etc/${PN}
	newins "${FILESDIR}/managed-settings-native.json" managed-settings.json
}

pkg_postinst() {
	if ! grep -q DISABLE_INSTALLATION_CHECKS /etc/claude-code/managed-settings.json; then
		ewarn "Ensure you run etc-update or dispatch-conf before executing claude."
		ewarn "Failure to properly integrate changes to /etc/claude-code/managed-settings.json"
		ewarn "may lead to claude installing itself to your homedir without asking."
	fi
}
