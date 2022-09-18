# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='SAGA Geoprocessing and Terrain Analysis'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/envirem_2.3.tar.gz"

LICENSE='GPL-3'

IUSE="${IUSE-}"
R_SUGGESTS=""
DEPEND="
>=dev-lang/R-2.10
sci-CRAN/gstat
sci-CRAN/shapefiles
sci-CRAN/plyr
sci-CRAN/rgdal
sci-CRAN/stringr
sci-CRAN/magrittr
>=sci-geosciences/saga-2.3
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"

