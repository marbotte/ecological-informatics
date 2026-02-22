# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Web App For ctmm'
EGIT_REPO_URI="https://github.com/ctmm-initiative/ctmmweb.git"
LICENSE='GPL-3'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND=">=dev-lang/R-3.5.0
	sci-CRAN/shiny
	sci-CRAN/shinydashboard
	sci-CRAN/shinyWidgets
	sci-CRAN/DT
	sci-CRAN/crayon
	sci-CRAN/markdown
	sci-CRAN/rmarkdown
	sci-CRAN/knitr
	sci-CRAN/data_table
	sci-CRAN/ctmm
	sci-CRAN/magrittr
	sci-CRAN/purrr
	sci-CRAN/memoise
	sci-CRAN/ggplot2
	sci-CRAN/ggrepel
	sci-CRAN/scales
	sci-CRAN/gridExtra
	sci-CRAN/lubridate
	sci-CRAN/leaflet
	sci-CRAN/sp
	sci-CRAN/leaflet_extras
	sci-CRAN/htmlwidgets
	sci-CRAN/httr
	sci-CRAN/stringr
	sci-CRAN/terra
	sci-CRAN/XML
	sci-CRAN/xml2
	sci-CRAN/zip
	sci-CRAN/bit64
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

