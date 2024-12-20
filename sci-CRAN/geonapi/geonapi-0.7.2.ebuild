# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Read and Write Ecological Metadata Language Files'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/geonapi_0.7-2.tar.gz"
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
