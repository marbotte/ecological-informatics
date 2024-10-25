# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Read and Write Ecological Metadata Language Files'
EGIT_REPO_URI="https://github.com/LivingNorway/LivingNorwayR,git"
LICENSE='GPL-3'

DEPEND="
	>=dev-lang/R-2.10
	sci-CRAN/dplyr
	sci-CRAN/leaflet
	sci-CRAN/sf
	sci-CRAN/R6
	sci-CRAN/readr
	sci-CRAN/uuid
	sci-CRAN/knitr
	sci-CRAN/rmarkdown
	sci-CRAN/emld
	sci-CRAN/zip
	sci-CRAN/xml2
	sci-CRAN/here
"
