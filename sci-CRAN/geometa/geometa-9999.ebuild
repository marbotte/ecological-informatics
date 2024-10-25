# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Tools for Reading and Writing IS... (see metadata)'
LICENSE='MIT'
EGIT_REPO_URI="https://github.com/eblondel/geometa.git"

DEPEND="sci-CRAN/R6
	sci-CRAN/jsonlite
	sci-CRAN/XML
	sci-CRAN/httr
	>=dev-lang/R-3.3.0
	sci-CRAN/EML
"
