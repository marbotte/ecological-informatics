# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Tools for visualising amplicon data'
EGIT_REPO_URI="https://github.com/KasperSkytte/ampvis2.git"
LICENSE='GPL-3'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND=">=dev-lang/R-3.5.0
	sci-CRAN/ggplot2
	sci-CRAN/plyr
	sci-CRAN/dplyr
	sci-CRAN/magrittr
	sci-CRAN/vegan
	sci-CRAN/tidyr
	sci-CRAN/purrr
	sci-CRAN/data_table
	sci-CRAN/plotly
	sci-CRAN/stringr
	sci-CRAN/scales
	sci-CRAN/RColorBrewer
	sci-CRAN/ggrepel
	sci-CRAN/ape
	sci-CRAN/crayon
	sci-CRAN/cli
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

