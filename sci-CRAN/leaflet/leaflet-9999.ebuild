# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Create Interactive Web Maps with... (see metadata)'
LICENSE='GPL-3'
EGIT_REPO_URI="https://github.com/rstudio/leaflet.git"

DEPEND=">=dev-lang/R-3.1.0
	sci-CRAN/crosstalk
	sci-CRAN/htmltools
	>=sci-CRAN/htmlwidgets-1.5.4
	>=sci-CRAN/leaflet_providers-2.0.0
	sci-CRAN/magrittr
	sci-CRAN/markdown
	sci-CRAN/png
	>=sci-CRAN/raster-3.6.3
	sci-CRAN/RColorBrewer
	>=sci-CRAN/scales-1.0.0
	sci-CRAN/sp
	sci-CRAN/viridisLite
	sci-CRAN/xfun
"
RDEPEND="${DEPEND-}"
