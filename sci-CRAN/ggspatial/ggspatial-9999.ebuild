# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Spatial data plus the power of the ggplot2 framework means easier mapping [...]'
EGIT_REPO_URI="https://github.com/paleolimbot/ggspatial.git"
LICENSE='GPL-3'

IUSE="${IUSE-}
"
DEPEND=">=dev-lang/R-2.10
	>=sci-CRAN/ggplot2-3.0.0
	>=sci-CRAN/rosm-0.2
	sci-CRAN/sf
	sci-CRAN/abind
	sci-CRAN/tibble
	sci-CRAN/scales
	sci-CRAN/tidyr
	sci-CRAN/rlang
	sci-CRAN/glue
"
RDEPEND="${DEPEND-}"
