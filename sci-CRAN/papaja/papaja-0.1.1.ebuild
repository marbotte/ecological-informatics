# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION="Tools to create dynamic, submission-ready manuscripts, which conform to APA"
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/papaja_0.1.1.tar.gz"
LICENSE='MIT'

IUSE="${IUSE-}"
DEPEND="
	>=dev-lang/R-3.6.0
	>=sci-CRAN/tinylabels-0.1.0
	>=sci-CRAN/bookdown-0.9.1
	>=sci-CRAN/broom-0.7.0
	>=sci-CRAN/glue-1.4.0
	>=sci-CRAN/knitr-1.26
	>=sci-CRAN/rmarkdown-2.4
	>=sci-CRAN/rmdfiltr-0.1.3
	sci-CRAN/yaml
	sci-CRAN/zip
	virtual/pandoc
	sci-CRAN/tinytex
"
RDEPEND="${DEPEND-}"



