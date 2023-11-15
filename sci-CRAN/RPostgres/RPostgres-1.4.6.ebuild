# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='C++ Interface to PostgreSQL'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/RPostgres_1.4.6.tar.gz"
LICENSE='MIT'

IUSE="${IUSE-} r_suggests_callr r_suggests_covr r_suggests_dbitest
	r_suggests_knitr r_suggests_rmarkdown r_suggests_testthat"
R_SUGGESTS="
	r_suggests_callr? ( sci-CRAN/callr )
	r_suggests_covr? ( sci-CRAN/covr )
	r_suggests_dbitest? ( >=sci-CRAN/DBItest-1.7.2.9001 )
	r_suggests_knitr? ( sci-CRAN/knitr )
	r_suggests_rmarkdown? ( sci-CRAN/rmarkdown )
	r_suggests_testthat? ( >=sci-CRAN/testthat-3.0.0 )
"
DEPEND=">=sci-CRAN/DBI-1.1.0
	>=sci-CRAN/blob-1.2.0
	>=dev-lang/R-3.1.0
	sci-CRAN/bit64
	>=sci-CRAN/hms-1.0.0
	sci-CRAN/lubridate
	sci-CRAN/withr
"
RDEPEND="${DEPEND-}
	sci-CRAN/cpp11
	dev-db/postgresql
	>=sci-CRAN/plogr-0.2.0
	${R_SUGGESTS-}
"
