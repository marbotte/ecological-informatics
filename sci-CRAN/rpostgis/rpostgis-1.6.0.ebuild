# Copyright 1999-2025 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='R Interface to a PostGIS Database'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/rpostgis_${PV}.tar.gz"
LICENSE='GPL-3+'
DEPEND=">=dev-lang/R-3.3.0
	>=sci-CRAN/terra-1.6.7
	>=sci-CRAN/DBI-0.5
	sci-CRAN/RPostgreSQL
	sci-CRAN/sf
	sci-CRAN/cli
	sci-CRAN/lifecycle
"
RDEPEND="${DEPEND-}
	dev-db/postgresql
"
