# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Self Organizing Kohonen Map for the analysis of diatom communities'
KEYWORDS="~amd64"
EGIT_REPO_URI="https://github.com/marbotte/diatSOM.git"
LICENSE='GPL-2+'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND="sci-CRAN/vegan
	dev-lang/R
"
RDEPEND="${DEPEND-}
"

