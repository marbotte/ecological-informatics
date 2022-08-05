# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7


# inherit lists eclasses to inherit functions from. For example, an ebuild
# that needs the eautoreconf function from autotools.eclass won't work
# without the following line:
#inherit autotools
#
# Eclasses tend to list descriptions of how to use their functions properly.
# Take a look at the eclass/ directory for more examples.

# Short one-line description of this package.
DESCRIPTION="Dell (SonicWall) NetExtender SSL VPN Client"

# Homepage, not used by Portage directly but handy for developer reference
HOMEPAGE="https://www.mysonicwall.com/muir/freedownloads"

# Point to any required sources; these will be automatically downloaded by
# Portage.
SRC_URI="https://software.sonicwall.com/NetExtender/NetExtender.Linux-10.2.839.x86_64.tgz"
# SRC_URI="amd64? ( NetExtender.Linux-10.2.815.x86_64.tgz )"

S="${WORKDIR}/netExtenderClient"

# License of the package.  This must match the name of file(s) in the
# licenses/ directory.  For complex license combination see the developer
# docs on gentoo.org for details.
LICENSE="all-rights-reserved"

SLOT="0"

# For binary packages, use -* and then list the archs the bin package
# exists for.  If the package was for an x86 binary package, then
# KEYWORDS would be set like this: KEYWORDS="-* x86"
# Do not use KEYWORDS="*"; this is not valid in an ebuild context.
KEYWORDS="-* ~amd64"

# Comprehensive list of any and all USE flags leveraged in the ebuild,
# with some exceptions, e.g., ARCH specific flags like "amd64" or "ppc".
# Not needed if the ebuild doesn't use any USE flags.
IUSE=""

# User has to faff around to download this binary!
RESTRICT="fetch"


# Run-time dependencies. Must be defined to whatever this depends on to run.
# Example:
#    ssl? ( >=dev-libs/openssl-1.0.2q:0= )
#    >=dev-lang/perl-5.24.3-r1
# It is advisable to use the >= syntax show above, to reflect what you
# had installed on your system when you tested the package.  Then
# other users hopefully won't be caught without the right version of
# a dependency.
RDEPEND="
	>=net-dialup/ppp-2.4.8
	>=sys-apps/iproute2-5.4.0
"

# previous versions needed  >=sys-apps/net-tools-1.60_p20180626073013 for /sbin/ifconfig but
# this is not now required if /sbin/ip is there.

# Build-time dependencies that need to be binary compatible with the system
# being built (CHOST). These include libraries that we link against.
# The below is valid if the same run-time depends are required to compile.
#DEPEND="${RDEPEND}"

# Build-time dependencies that are executed during the emerge process, and
# only need to be present in the native build system (CBUILD). Example:
#BDEPEND="virtual/pkgconfig"

pkg_nofetch() {
	einfo "There is no stable source of NetExtender downloads."
	einfo "Please obtain the .tar.gz archive from your firewall operator or try"
	einfo "https://www.mysonicwall.com/muir/freedownloads"
	einfo
	einfo "Place NetExtender.Linux-${PV}.x86_64.tgz in your distfiles directory"
}


src_configure() {
	# nothing to do for this binary
	einfo "Nothing to configure"
}

src_compile() {
	# nothing to do for this binary
	einfo "Nothing to compile"
}

src_install() {
	# install the binary in /opt directory as is consistent for binpkgs
	local dest="/opt/${PN}"
	# 
	local ddest="${ED}${dest#/}"
	# This is a replacement for the "install" script supplied with the binary

	# we need to have /sbin/ip but sys-apps/iproute2 installs /bin/ip
	dosym /bin/ip "/sbin/ip"

	into ${dest}
	# see the install_files function in supplied install script
	insinto /etc/ppp/peers
	doins sslvpn
	dosbin netExtender
	#dobin netExtenderGui
	dosbin nxMonitor
	# skip uninstallNetExtender

	doman netExtender.1
	dodoc README
	# skip libNetExtender.so
	# skip libNetExtenderEpc.so
	# what do about ca-bundle.crt ?

	# Don't install any of the java stuff

	# put a symlink into /opt/bin to launch from command line
	dosym "${dest}/sbin/netExtender" "/opt/bin/netExtender"

	# Insert the symlinks needed to set up tunnel on ppp connect
	#dosym "sslvpnroute" "/etc/ppp/ip-up.d/20-netextenderroute.sh"
	# and teardown
	#dosym "sslvpnroutecleanup" "/etc/ppp/ip-down.d/20-netextenderroute.sh"

	# Now try to replict what running as root with -i option does:
	# create some PID files
	touch ${D}/etc/ppp/netextender.pid ${D}/etc/ppp/netextenderppp.pid
	# this is what the binary does. It's offensively insecure ...
	chmod 0666 ${D}/etc/ppp/netextender.pid ${D}/etc/ppp/netextenderppp.pid
	# This script is created from the -i run, this is a copy being installed
	cp ${FILESDIR}/sslvpnroute .
	# fix the path
	sed -i -e 's$/usr/sbin/netExtender$/opt/netextender/sbin/netExtender$' sslvpnroute
	exeinto /etc/ppp/ip-up.d/
	newexe sslvpnroute 20-netextenderroute.sh
	# create a pre-cleanup script which fixes the cleanup script
	exeinto /etc/ppp/ip-down.d/
	doexe ${FILESDIR}/10-netextenderfix.sh

	einfo "You may need to run"
	einfo "# /opt/bin/netExtender -i"
	einfo "as root after merge to complete installation, if the work-arounds in this ebuild have failed."
}
