# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Kohonen Self-Organizing Maps with R'
KEYWORDS="~amd64"
SRC_URI="https://codeload.github.com/marbotte/diatSOM/tar.gz/master"
LICENSE='GPL-3+'

IUSE="${IUSE-}" 
R_SUGGESTS="
"
DEPEND="dev-lang/R
"
RDEPEND="${DEPEND-}
	sci-CRAN/vegan
	${R_SUGGESTS-}
"

_UNRESOLVED_PACKAGES=( '>=sci-CRAN/sf-0.9.8' )
