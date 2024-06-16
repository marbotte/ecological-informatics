# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Collection of Convenient Functio... (see metadata)'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/sjstats_${PV}.tar.gz"
LICENSE='GPL-3'

DEPEND="sci-CRAN/sjmisc
	sci-CRAN/emmeans
	sci-CRAN/magrittr
	sci-CRAN/insight
	virtual/MASS
	sci-CRAN/bayestestR
	sci-CRAN/lme4
	sci-CRAN/performance
	sci-CRAN/modelr
	sci-CRAN/tidyr
	sci-CRAN/purrr
	sci-CRAN/sjlabelled
	sci-CRAN/rlang
	>=dev-lang/R-3.4
	sci-CRAN/broom
	sci-CRAN/effectsize
	sci-CRAN/parameters
	sci-CRAN/dplyr
	sci-CRAN/datawizard
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
