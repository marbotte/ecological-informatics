# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Miscellaneous Extensions to ggplot2'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/ggpmisc_0.5.1.tar.gz"
LICENSE='GPL-2+'

IUSE="${IUSE-}
"
DEPEND=">=dev-lang/R-4.0.0
	>=sci-CRAN/ggpp-0.4.5
	>=sci-CRAN/ggplot2-3.3.5
	>=sci-CRAN/scales-1.2.0
	>=sci-CRAN/rlang-1.0.0
	>=sci-CRAN/generics-0.1.2
	>=sci-CRAN/confintr-0.1.2
	>=sci-CRAN/polynom-1.4.0
	>=sci-CRAN/quantreg-5.93
	>=sci-CRAN/lmodel2-1.7.3
	>=sci-CRAN/splus2R-1.3.3
	>=sci-CRAN/tibble-3.1.5
	>=sci-CRAN/plyr-1.8.6
	>=sci-CRAN/dplyr-1.0.6
	>=sci-CRAN/lubridate-1.7.10
"
RDEPEND="${DEPEND-}"
