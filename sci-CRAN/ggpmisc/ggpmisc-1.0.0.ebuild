# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Miscellaneous Extensions to ggplot2'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/ggpmisc_${PV}.tar.gz"
LICENSE='GPL-2+'

IUSE="${IUSE-}"
DEPEND=">=sci-CRAN/rlang-1.1.5
	>=sci-CRAN/generics-0.1.4
	>=sci-CRAN/confintr-1.0.2
	>=sci-CRAN/polynom-1.4.1
	>=sci-CRAN/caTools-1.18.3
	>=sci-CRAN/lubridate-1.9.5
	>=sci-CRAN/tibble-3.3.1
	>=sci-CRAN/tidyr-1.3.0
	>=sci-CRAN/splus2R-1.3.5
	>=sci-CRAN/dplyr-1.1.4
	>=dev-lang/R-4.2.0
	>=sci-CRAN/ggpp-0.6.1
	>=sci-CRAN/ggplot2-3.6.0
	>=sci-CRAN/scales-1.4.0
	>=sci-CRAN/plyr-1.8.9
	>=sci-CRAN/quantreg-6.1
	sci-CRAN/MatrixModels
"
RDEPEND="${DEPEND-}"
