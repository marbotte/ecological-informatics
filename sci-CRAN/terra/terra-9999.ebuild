# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Spatial Data Analysis'
LICENSE='GPL-3+'
EGIT_REPO_URI="https://github.com/rspatial/terra.git"
DEPEND=">=dev-lang/R-3.5.0
	>=sci-CRAN/Rcpp-1.0.10
	sci-CRAN/sf
"
RDEPEND="${DEPEND-}
>=sci-libs/geos-3.4.0
>=sci-libs/gdal-2.2.3
>=sci-libs/proj-4.9.3
>=dev-db/sqlite-3.0
"
