# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Access the system credential store from R'
EGIT_REPO_URI="https://github.com/r-lib/keyring.git"
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
