# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Includes algorithms to facilitate the assessment of extinction risk of species according to the IUCN (International Union for Conservation of Nature, see <http://www.iucn.org> for more information) red list criteria.'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/red_1.5.0.tar.gz"
LICENSE='GPL-3'

IUSE="${IUSE-}"
R_SUGGESTS=""
DEPEND="sci-CRAN/BAT
sci-CRAN/dismo
sci-CRAN/gdistance
sci-CRAN/geosphere
sci-CRAN/jsonlite
sci-CRAN/maptools
>=dev-lang/R-3.0.0
sci-CRAN/sp
sci-CRAN/rgeos
sci-CRAN/rgdal
sci-CRAN/raster
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"

