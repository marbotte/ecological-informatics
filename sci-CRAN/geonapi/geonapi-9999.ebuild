# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Read and Write Ecological Metadata Language Files'
EGIT_REPO_URI="https://github.com/eblondel/geonapi.git"
LICENSE='MIT'

DEPEND="
	>=dev-lang/R-3.1.0
	sci-CRAN/geometa
	sci-CRAN/keyring
	sci-CRAN/R6
	sci-CRAN/openssl
	sci-CRAN/httr
	sci-CRAN/XML
	sci-CRAN/plyr
"
