# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Embedded JavaScript and WebAssembly Engine for R'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/V8_${PV}.tar.gz"
LICENSE='MIT'

DEPEND=">=sci-CRAN/Rcpp-0.12.12
	>=sci-CRAN/jsonlite-1.0
	>=sci-CRAN/curl-1.0
"
RDEPEND="${DEPEND-}
	sci-CRAN/Rcpp
	virtual/jdk
"
