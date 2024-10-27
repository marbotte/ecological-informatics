# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Bindings for the "Geospatial" Data Abstraction Library'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/Archive/rgdal/rgdal_1.6-7.tar.gz"
LICENSE='GPL-2+'

IUSE="${IUSE-} 
	"
R_SUGGESTS="
"
DEPEND=">=dev-lang/R-3.5.0
>=sci-CRAN/sp-1.1.0
>=sci-libs/proj-4.8.0
>=sci-libs/gdal-1.11.4
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"
