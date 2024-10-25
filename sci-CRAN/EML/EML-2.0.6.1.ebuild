# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Read and Write Ecological Metadata Language Files'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/EML_${PV}.tar.gz"
LICENSE='MIT'

DEPEND="sci-CRAN/xml2
	sci-CRAN/digest
	>=sci-CRAN/emld-0.5.0
	sci-CRAN/jqr
	sci-CRAN/jsonlite
	sci-CRAN/uuid
	sci-CRAN/rmarkdown
	>=dev-lang/R-3.1.0
	sci-CRAN/dplyr
"
