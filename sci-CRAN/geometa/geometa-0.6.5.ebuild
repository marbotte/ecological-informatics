# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Tools for Reading and Writing IS... (see metadata)'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/geometa_0.8-0.tar.gz"
LICENSE='MIT'

DEPEND="sci-CRAN/R6
	sci-CRAN/jsonlite
	sci-CRAN/XML
	sci-CRAN/httr
	>=dev-lang/R-3.3.0
	sci-CRAN/EML
"
