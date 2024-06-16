# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Data and Variable Transformation Functions'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/sjmisc_${PV}.tar.gz"
LICENSE='GPL-3'

DEPEND=">=dev-lang/R-3.4
	sci-CRAN/magrittr
	sci-CRAN/purrr
	sci-CRAN/dplyr
	sci-CRAN/insight
	sci-CRAN/rlang
	>=sci-CRAN/sjlabelled-1.1.1
	sci-CRAN/tidyselect
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
