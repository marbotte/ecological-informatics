# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Simple Features for R'
LICENSE='GPL-2'
EGIT_REPO_URI="https://github.com/r-spatial/sf.git"

DEPEND="
>=sci-CRAN/DBI-0.8
sci-CRAN/magrittr
virtual/class
>=sci-CRAN/Rcpp-0.12.18
>=dev-lang/R-3.3.0
>=sci-CRAN/units-0.7.0
sci-CRAN/rgdal
>=sci-CRAN/classInt-0.4.1
>=sci-CRAN/s2-1.1.0
"
RDEPEND="${DEPEND-}
sci-CRAN/Rcpp
sci-libs/proj
sci-libs/geos
sci-libs/gdal
"

