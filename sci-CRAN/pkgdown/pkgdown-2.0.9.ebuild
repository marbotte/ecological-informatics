# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Make Static HTML Documentation for a Package'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/pkgdown_${PV}.tar.gz"
LICENSE='MIT'

IUSE="${IUSE-}"
DEPEND=">=sci-CRAN/bslib-0.5.1
	sci-CRAN/digest
	sci-CRAN/jsonlite
	>=sci-CRAN/cli-3.6.1
	>=sci-CRAN/fs-1.4.0
	>=sci-CRAN/rmarkdown-1.1.9007
	sci-CRAN/memoise
	sci-CRAN/whisker
	sci-CRAN/ragg
	>=sci-CRAN/xml2-1.3.1
	sci-CRAN/yaml
	>=dev-lang/R-3.1.0
	>=sci-CRAN/desc-1.4.0
	sci-CRAN/magrittr
	sci-CRAN/tibble
	>=sci-CRAN/downlit-0.4.0
	>=sci-CRAN/rlang-1.0.0
	>=sci-CRAN/callr-3.7.3
	>=sci-CRAN/httr-1.4.2
	>=sci-CRAN/purrr-1.0.0
	>=sci-CRAN/withr-2.4.3
"
RDEPEND="${DEPEND-}
	virtual/pandoc
"
