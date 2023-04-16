# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Processing and analysing animal trajectories'
EGIT_REPO_URI="https://github.com/pmartinezarbizu/pairwiseAdonis.git"
EGIT_CHECKOUT_DIR=${WORKDIR}/${P}/${P}
LICENSE='GPL-3'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND=">=dev-lang/R-3.0.0
	sci-CRAN/vegan
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

