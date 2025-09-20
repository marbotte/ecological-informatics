# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Automate Package and Project Setup'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/usethis_${PV}.tar.gz"
LICENSE='MIT'

DEPEND=">=sci-CRAN/clipr-0.3.0
	>=sci-CRAN/desc-1.4.2
	>=sci-CRAN/cli-3.0.1
	>=sci-CRAN/fs-1.3.0
	>=sci-CRAN/lifecycle-1.0.0
	>=sci-CRAN/rlang-1.1.0
	>=sci-CRAN/withr-2.3.0
	sci-CRAN/jsonlite
	>=dev-lang/R-3.2
	>=sci-CRAN/gert-1.4.1
	>=sci-CRAN/gh-1.2.1
	sci-CRAN/crayon
	>=sci-CRAN/glue-1.3.0
	sci-CRAN/rappdirs
	sci-CRAN/rstudioapi
	sci-CRAN/whisker
	>=sci-CRAN/rprojroot-2.1.1
	>=sci-CRAN/curl-2.7
	sci-CRAN/purrr
	sci-CRAN/yaml
"
RDEPEND="${DEPEND-}"
