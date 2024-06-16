# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Easy Data Wrangling and Statisti... (see metadata)'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/datawizard_${PV}.tar.gz"
LICENSE='MIT'

IUSE="${IUSE-} r_suggests_bayestestr r_suggests_boot r_suggests_brms
	r_suggests_curl r_suggests_data_table r_suggests_dplyr
	r_suggests_effectsize r_suggests_emmeans r_suggests_gamm4
	r_suggests_ggplot2 r_suggests_gt r_suggests_haven
	r_suggests_htmltools r_suggests_httr r_suggests_knitr r_suggests_lme4
	r_suggests_mediation r_suggests_parameters r_suggests_poorman
	r_suggests_psych r_suggests_readr r_suggests_readxl r_suggests_rio
	r_suggests_rmarkdown r_suggests_rstanarm r_suggests_see
	r_suggests_testthat r_suggests_tibble r_suggests_tidyr
	r_suggests_withr"
R_SUGGESTS="
	r_suggests_bayestestr? ( sci-CRAN/bayestestR )
	r_suggests_boot? ( virtual/boot )
	r_suggests_brms? ( sci-CRAN/brms )
	r_suggests_curl? ( sci-CRAN/curl )
	r_suggests_data_table? ( sci-CRAN/data_table )
	r_suggests_dplyr? ( >=sci-CRAN/dplyr-1.0 )
	r_suggests_effectsize? ( sci-CRAN/effectsize )
	r_suggests_emmeans? ( sci-CRAN/emmeans )
	r_suggests_gamm4? ( sci-CRAN/gamm4 )
	r_suggests_ggplot2? ( sci-CRAN/ggplot2 )
	r_suggests_gt? ( sci-CRAN/gt )
	r_suggests_haven? ( sci-CRAN/haven )
	r_suggests_htmltools? ( sci-CRAN/htmltools )
	r_suggests_httr? ( sci-CRAN/httr )
	r_suggests_knitr? ( sci-CRAN/knitr )
	r_suggests_lme4? ( sci-CRAN/lme4 )
	r_suggests_mediation? ( sci-CRAN/mediation )
	r_suggests_parameters? ( >=sci-CRAN/parameters-0.20.3 )
	r_suggests_poorman? ( >=sci-CRAN/poorman-0.2.6 )
	r_suggests_psych? ( sci-CRAN/psych )
	r_suggests_readr? ( sci-CRAN/readr )
	r_suggests_readxl? ( sci-CRAN/readxl )
	r_suggests_rio? ( sci-CRAN/rio )
	r_suggests_rmarkdown? ( sci-CRAN/rmarkdown )
	r_suggests_rstanarm? ( sci-CRAN/rstanarm )
	r_suggests_see? ( sci-CRAN/see )
	r_suggests_testthat? ( >=sci-CRAN/testthat-3.2.0 )
	r_suggests_tibble? ( sci-CRAN/tibble )
	r_suggests_tidyr? ( sci-CRAN/tidyr )
	r_suggests_withr? ( sci-CRAN/withr )
"
DEPEND=">=dev-lang/R-3.6
	>=sci-CRAN/insight-0.19.8
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
