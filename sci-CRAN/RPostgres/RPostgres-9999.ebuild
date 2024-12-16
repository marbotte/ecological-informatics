# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages git-r3

DESCRIPTION='C++ Interface to PostgreSQL'
EGIT_REPO_URI="https://github.com/r-dbi/RPostgres.git"
LICENSE='GPL-3+'

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
