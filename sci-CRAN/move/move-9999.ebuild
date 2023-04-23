# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Visualizing and analysing animal track data'
EGIT_REPO_URI="https://gitlab.com/bartk/move.git"
LICENSE='GPL-3+'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND=">=sci-CRAN/geosphere-1.4.3
	sci-CRAN/sp
	sci-CRAN/rgdal
	>=sci-CRAN/raster-3.6.14
	sci-CRAN/Rcpp
	sci-CRAN/httr
	sci-CRAN/xml2
	sci-CRAN/memoise
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

