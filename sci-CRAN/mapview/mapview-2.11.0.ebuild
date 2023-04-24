# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Interactive Viewing of Spatial Data in R'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/mapview_2.11.0.tar.gz"
LICENSE='GPL-3+'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND=">=dev-lang/R-3.6.0
	sci-CRAN/base64enc
	sci-CRAN/htmltools
	sci-CRAN/htmlwidgets
	sci-CRAN/leafem
	>=sci-CRAN/leaflet-2.0.0
	sci-CRAN/leafpop
	sci-CRAN/png
	sci-CRAN/raster
	sci-CRAN/satellite
	>=sci-CRAN/scales-0.2.5
	sci-CRAN/servr
	sci-CRAN/sf
	sci-CRAN/sp
	sci-CRAN/webshot
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

