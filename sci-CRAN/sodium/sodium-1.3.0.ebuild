# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Bindings to libsodium, an encryption, decryption, signatures, password library'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/sodium_1.3.0.tar.gz"
LICENSE='MIT'

IUSE="${IUSE-}"
R_SUGGESTS=""
DEPEND="
	dev-libs/libsodium
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
