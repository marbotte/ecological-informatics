# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Groupwise Statistics, LSmeans, L... (see metadata)'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/doBy_${PV}.tar.gz"
LICENSE='GPL-2+'

DEPEND="
	>=dev-lang/R-4.2.0
	sci-CRAN/boot
	sci-CRAN/broom
	sci-CRAN/cowplot
	sci-CRAN/Deriv
	sci-CRAN/dplyr
	sci-CRAN/ggplot2
	virtual/MASS
	virtual/Matrix
	sci-CRAN/modelr
	sci-CRAN/microbenchmark
	sci-CRAN/rlang
	sci-CRAN/tibble
	sci-CRAN/tidyr
"
RDEPEND="${DEPEND-}"
