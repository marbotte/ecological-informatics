# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION="Take Screenshots of Web Pages"
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/webshot_0.5.3.tar.gz"
LICENSE='GPL-2'

IUSE="${IUSE-}
	r_suggests_httpuv
	r_suggests_knitr
	r_suggests_rmarkdown
	r_suggests_shiny"
R_SUGGESTS="
	r_suggests_httpuv? ( sci-CRAN/httpuv )
	r_suggests_knitr? ( sci-CRAN/knitr )
	r_suggests_rmarkdown? ( sci-CRAN/rmarkdown )
	r_suggests_shiny? ( sci-CRAN/shiny )
"
DEPEND="
	>=dev-lang/R-3.0
	sci-CRAN/magrittr
	sci-CRAN/jsonlite
	sci-CRAN/callr
	media-gfx/graphicsmagick
	media-gfx/imagemagick
	media-gfx/optipng
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
