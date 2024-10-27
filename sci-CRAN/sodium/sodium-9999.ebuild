# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Bindings to libsodium, an encryption, decryption, signatures, password library'
EGIT_REPO_URI="https://github.com/r-lib/sodium.git"
LICENSE='MIT'

IUSE="${IUSE-}"
R_SUGGESTS=""
DEPEND="
	dev-libs/libsodium
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
