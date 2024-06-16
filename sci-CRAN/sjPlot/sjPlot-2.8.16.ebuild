# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Data Visualization for Statistic... (see metadata)'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/sjPlot_${PV}.tar.gz"
LICENSE='GPL-3'

DEPEND="sci-CRAN/scales
	sci-CRAN/purrr
	>=sci-CRAN/sjmisc-2.8.2
	sci-CRAN/performance
	>=sci-CRAN/tidyr-1.0.0
	sci-CRAN/parameters
	sci-CRAN/rlang
	>=sci-CRAN/sjlabelled-1.1.2
	>=sci-CRAN/sjstats-0.17.8
	>=dev-lang/R-3.6
	sci-CRAN/bayestestR
	sci-CRAN/dplyr
	>=sci-CRAN/ggplot2-3.2.0
	sci-CRAN/insight
	virtual/MASS
	sci-CRAN/datawizard
	sci-CRAN/ggeffects
	sci-CRAN/knitr
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
