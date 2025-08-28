# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Checks and corrects taxonomy (based in the rds format for permanent plots)'
KEYWORDS="~amd64"
EGIT_REPO_URI="https://github.com/marbotte/rdsTaxVal.git"
LICENSE='GPL-3'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND=">=dev-lang/R-3.5.0
	>=sci-CRAN/taxize-0.10.0
	sci-CRAN/openxlsx

"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

