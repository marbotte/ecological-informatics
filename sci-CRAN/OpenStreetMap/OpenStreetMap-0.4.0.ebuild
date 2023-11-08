# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Access to Open Street Map Raster Images'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/OpenStreetMap_0.4.0.tar.gz"
LICENSE='GPL-2'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND=">=sci-CRAN/ggplot2-0.9.0
	sci-CRAN/rJava
	sci-CRAN/raster
	sci-CRAN/rgdal
	sci-CRAN/sp
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

