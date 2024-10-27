# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Geographic Data Analysis and Modeling'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/raster_$(ver_cut 1-2)-$(ver_cut 3).tar.gz"
LICENSE='GPL-3+'

DEPEND="
>=sci-CRAN/terra-1.6.41
>=dev-lang/R-3.5.0
sci-CRAN/Rcpp
>=sci-CRAN/sp-1.4.5
>=sci-CRAN/rgdal-1.5.8
"
RDEPEND="${DEPEND-}
	sci-CRAN/Rcpp
"


