# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='A Client to geoBoundaries, A Political Administrative Boundaries Dataset'
EGIT_REPO_URI="https://gitlab.com/dickoa/rgeoboundaries.git"

LICENSE='MIT'

DEPEND="
>=sci-CRAN/sp-1.0.15
>=dev-lang/R-3.5
>=sci-CRAN/crul-0.8
>=sci-CRAN/sf-0.9.3
sci-CRAN/hoardr
sci-CRAN/glue
sci-CRAN/memoise
>=sci-CRAN/countrycode-1.2.0
"
RDEPEND="${DEPEND-}
"

