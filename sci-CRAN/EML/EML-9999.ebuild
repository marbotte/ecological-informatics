# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Read and Write Ecological Metadata Language Files'
EGIT_REPO_URI="https://github.com/ropensci/EML,git"
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
