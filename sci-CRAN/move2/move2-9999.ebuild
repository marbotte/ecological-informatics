# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Processing and analysing animal trajectories'
EGIT_REPO_URI="https://gitlab.com/bartk/move2.git"
LICENSE='GPL-3'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND=">=dev-lang/R-4.1.0
	sci-CRAN/assertthat
	>=sci-CRAN/sf-1.0.16
	sci-CRAN/rlang
	sci-CRAN/units
	sci-CRAN/tidyselect
	>=sci-CRAN/dplyr-1.1.0
	sci-CRAN/tibble
	>=sci-CRAN/vroom-1.6.1
	sci-CRAN/cli
	>=sci-CRAN/vctrs-0.5.2
	sci-CRAN/bit64
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

