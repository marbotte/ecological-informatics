# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Utility functions for ecological analyses in R'
KEYWORDS="~amd64"
EGIT_REPO_URI="https://github.com/marbotte/ecolUtil.git"
LICENSE='GPL-3'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND="dev-lang/R
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

