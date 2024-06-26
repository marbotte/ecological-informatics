# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Functions for Tabular Reporting'
SRC_URI="http://cran.r-project.org/src/contrib/flextable_${PV}.tar.gz"
LICENSE='GPL-3'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"

DEPEND="sci-CRAN/htmltools
	>=sci-CRAN/uuid-0.1.4
	>=sci-CRAN/gdtools-0.3.6
	sci-CRAN/rmarkdown
	sci-CRAN/knitr
	sci-CRAN/rlang
	sci-CRAN/ragg
	>=sci-CRAN/officer-0.6.5
	sci-CRAN/xml2
	>=sci-CRAN/data_table-1.13.0
"
RDEPEND="${DEPEND-}"
