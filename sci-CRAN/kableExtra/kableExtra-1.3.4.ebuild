# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION="Construct Complex Table with 'kable' and Pipe Syntax"
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/kableExtra_1.3.4.tar.gz"
LICENSE='MIT'

IUSE="${IUSE-}
	r_suggests_testthat
	r_suggests_magick
	r_suggests_formattable
	r_suggests_sparkline"
R_SUGGESTS="
	r_suggests_testthat? ( sci-CRAN/testthat )
	r_suggests_magick? ( sci-CRAN/magick )
	r_suggests_formattable? ( sci-CRAN/formattable )
	r_suggests_sparkline? ( sci-CRAN/sparkline )

"
DEPEND="
	>=dev-lang/R-3.1.0
	>=sci-CRAN/knitr-1.16
	sci-CRAN/magrittr
	>=sci-CRAN/stringr-1.0
	>=sci-CRAN/xml2-1.1.1
	sci-CRAN/rvest
	>=sci-CRAN/rmarkdown-1.6.0
	sci-CRAN/scales
	sci-CRAN/viridisLite
	sci-CRAN/htmltools
	sci-CRAN/rstudioapi
	sci-CRAN/glue
	sci-CRAN/webshot
	sci-CRAN/digest
	sci-CRAN/svglite
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
