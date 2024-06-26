# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='SQLite Interface for R'
SRC_URI="http://cran.r-project.org/src/contrib/RSQLite_${PV}.tar.gz"
LICENSE='LGPL-2.1+'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"

DEPEND=">=dev-lang/R-3.1.0
	sci-CRAN/bit64
	>=sci-CRAN/blob-1.2.0
	>=sci-CRAN/DBI-1.2.0
	sci-CRAN/rlang
	sci-CRAN/memoise
	virtual/pkgconfig
"
RDEPEND="${DEPEND-}
	>=sci-CRAN/plogr-0.2.0
	>=sci-CRAN/cpp11-0.4.0
"
