# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Facilitates mapping by making natural earth map data from http://www.naturalearthdata.com/'
EGIT_REPO_URI="https://github.com/ropensci/rnaturalearthhires.git"

LICENSE='CC0-1.0'

DEPEND=">=sci-CRAN/sp-1.0.15
>=dev-lang/R-3.1.1
"
RDEPEND="${DEPEND-}
"

