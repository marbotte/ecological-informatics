# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3
DESCRIPTION='Interpolation and Extrapolation ... (see metadata)'
EGIT_REPO_URI="https://github.com/JohnsonHsieh/iNEXT.git"
LICENSE='GPL-3+'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND="
>=dev-lang/R-3.4
sci-CRAN/reshape2
sci-CRAN/ggplot2
sci-CRAN/Rcpp
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

