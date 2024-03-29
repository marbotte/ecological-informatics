# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Simple Features for R'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/sf_1.0-12.tar.gz"
LICENSE='GPL-2'

IUSE="${IUSE-} r_suggests_blob r_suggests_covr r_suggests_dplyr
	r_suggests_ggplot2 r_suggests_knitr r_suggests_lwgeom r_suggests_maps
	r_suggests_odbc r_suggests_pillar r_suggests_pool r_suggests_raster
	r_suggests_rgeos r_suggests_rlang r_suggests_rmarkdown
	r_suggests_rpostgres r_suggests_rpostgresql r_suggests_rsqlite
	r_suggests_s2 r_suggests_sp r_suggests_spatstat
	r_suggests_spatstat_utils r_suggests_stars r_suggests_testthat
	r_suggests_tibble r_suggests_tidyr r_suggests_tidyselect
	r_suggests_tmap r_suggests_vctrs"
R_SUGGESTS="
	r_suggests_blob? ( sci-CRAN/blob )
	r_suggests_covr? ( sci-CRAN/covr )
	r_suggests_dplyr? ( >=sci-CRAN/dplyr-0.8.3 )
	r_suggests_ggplot2? ( sci-CRAN/ggplot2 )
	r_suggests_knitr? ( sci-CRAN/knitr )
	r_suggests_lwgeom? ( >=sci-CRAN/lwgeom-0.2.1 )
	r_suggests_maps? ( sci-CRAN/maps )
	r_suggests_odbc? ( sci-CRAN/odbc )
	r_suggests_pillar? ( sci-CRAN/pillar )
	r_suggests_pool? ( sci-CRAN/pool )
	r_suggests_raster? ( sci-CRAN/raster )
	r_suggests_rgeos? ( sci-CRAN/rgeos )
	r_suggests_rlang? ( sci-CRAN/rlang )
	r_suggests_rmarkdown? ( sci-CRAN/rmarkdown )
	r_suggests_rpostgres? ( >=sci-CRAN/RPostgres-1.1.0 )
	r_suggests_rpostgresql? ( sci-CRAN/RPostgreSQL )
	r_suggests_rsqlite? ( sci-CRAN/RSQLite )
	r_suggests_s2? ( >=sci-CRAN/s2-1.0.1 )
	r_suggests_sp? ( >=sci-CRAN/sp-1.2.4 )
	r_suggests_spatstat? ( sci-CRAN/spatstat )
	r_suggests_spatstat_utils? ( sci-CRAN/spatstat_utils )
	r_suggests_stars? ( >=sci-CRAN/stars-0.2.0 )
	r_suggests_testthat? ( sci-CRAN/testthat )
	r_suggests_tibble? ( >=sci-CRAN/tibble-1.4.1 )
	r_suggests_tidyr? ( >=sci-CRAN/tidyr-1.0.0 )
	r_suggests_tidyselect? ( >=sci-CRAN/tidyselect-1.0.0 )
	r_suggests_tmap? ( >=sci-CRAN/tmap-2.0 )
	r_suggests_vctrs? ( sci-CRAN/vctrs )
"
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
${R_SUGGESTS-}
"

