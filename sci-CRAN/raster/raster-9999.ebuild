# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Geographic Data Analysis and Modeling'
LICENSE='GPL-3+'
EGIT_REPO_URI="https://github.com/rspatial/raster.git"

DEPEND="
>=sci-CRAN/terra-1.8.5
>=dev-lang/R-3.5.0
sci-CRAN/Rcpp
>=sci-CRAN/sp-1.4.5
"
RDEPEND="${DEPEND-}
	sci-CRAN/Rcpp
"


