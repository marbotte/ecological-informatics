# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='DBI Package for the DuckDB Datab... (see metadata)'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="https://cran.r-project.org/src/contrib/duckdb_$(ver_cut 1-3)-$(ver_cut 4).tar.gz"
LICENSE='MIT'

DEPEND="sci-CRAN/DBI
	>=dev-lang/R-3.6.0
"
