# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Visualizing and analysing animal track data'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/move_4.1.10.tar.gz"
LICENSE='GPL-3+'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND=">=sci-CRAN/geosphere-1.4.3
	sci-CRAN/sp
	sci-CRAN/rgdal
	>=sci-CRAN/raster-3.5.2
	sci-CRAN/Rcpp
	sci-CRAN/httr
	sci-CRAN/xml2
	sci-CRAN/memoise
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

