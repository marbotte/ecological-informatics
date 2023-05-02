# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='3D Visualization Using OpenGL'
EGIT_REPO_URI="https://github.com/dmurdoch/rgl.git"
LICENSE='GPL-2+'

IUSE="${IUSE-} "
DEPEND=">=dev-lang/R-3.3.0
	>=sci-CRAN/htmlwidgets-1.6.0
	>=sci-CRAN/knitr-1.33
	>=sci-CRAN/jsonlite-0.9.20
	sci-CRAN/htmltools
	sci-CRAN/R6
	sci-CRAN/mime
	sci-CRAN/magrittr
	sci-CRAN/base64enc
"
RDEPEND="${DEPEND-}
	virtual/opengl
	app-text/pandoc
	media-libs/glu
	${R_SUGGESTS-}
"
