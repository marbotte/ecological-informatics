# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Spatial Data Analysis'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/Archive/terra/terra_$(ver_cut 1-2)-$(ver_cut 3).tar.gz"
LICENSE='GPL-3+'

IUSE="${IUSE-} r_suggests_ncdf4 r_suggests_tinytest"
R_SUGGESTS="
	r_suggests_ncdf4? ( sci-CRAN/ncdf4 )
	r_suggests_tinytest? ( sci-CRAN/tinytest )
"
DEPEND=">=dev-lang/R-3.5.0
	>=sci-CRAN/Rcpp-1.0.10
	sci-CRAN/sf
"
RDEPEND="${DEPEND-}
>=sci-libs/geos-3.4.0
>=sci-libs/gdal-2.2.3
>=sci-libs/proj-4.9.3
>=dev-db/sqlite-3.0
${R_SUGGESTS-}
"
