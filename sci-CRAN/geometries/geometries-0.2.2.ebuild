# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Convert Between R Objects and Geometric Structures'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/geometries_0.2.2.tar.gz"
LICENSE='MIT'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND="dev-lang/R
	>=sci-CRAN/Rcpp-1.0.10
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

