# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Access the system credential store from R'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/keyring_${PV}.tar.gz"
LICENSE='MIT'

IUSE="${IUSE-}"
R_SUGGESTS=""
DEPEND="sci-CRAN/assertthat
	sci-CRAN/askpass
	sci-CRAN/openssl
	sci-CRAN/R6
	sci-CRAN/sodium
	sci-CRAN/yaml
	sci-CRAN/filelock
	sci-CRAN/rappdirs
	app-crypt/libsecret
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
