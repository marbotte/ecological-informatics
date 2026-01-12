# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Miscellaneous Extensions to ggplot2'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/ggpmisc_${PV}.tar.gz"
LICENSE='GPL-2+'

IUSE="${IUSE-}"
DEPEND=">=dev-lang/R-4.0.0
	>=sci-CRAN/scales-1.3.0
	>=sci-CRAN/nlme-3.1.160
	>=sci-CRAN/mixtools-2.0.0
	>=sci-CRAN/multcomp-1.4.25
	>=sci-CRAN/rlang-1.1.3
	virtual/MASS
	>=sci-CRAN/splus2R-1.3.5
	>=sci-CRAN/tibble-3.2.1
	>=sci-CRAN/ggpp-0.5.8
	>=sci-CRAN/quantreg-6.0
	>=sci-CRAN/lmodel2-1.7.4
	>=sci-CRAN/confintr-1.0.2
	>=sci-CRAN/lubridate-1.9.3
	>=sci-CRAN/ggplot2-3.5.0
	>=sci-CRAN/plyr-1.8.9
	>=sci-CRAN/generics-0.1.3
	>=sci-CRAN/multcompView-0.1.10
	>=sci-CRAN/polynom-1.4.1
	>=sci-CRAN/dplyr-1.1.4
	>=sci-CRAN/tidyr-1.3.0
	>=sci-CRAN/caTools-1.18.3
"
RDEPEND="${DEPEND-}"
