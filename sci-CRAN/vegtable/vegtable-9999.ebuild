# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Handling Vegetation Data Sets'
EGIT_REPO_URI="https://github.com/kamapu/vegtable.git"
LICENSE='GPL-2+'

IUSE="${IUSE-}"
R_SUGGESTS=""
DEPEND="virtual/foreign
	sci-CRAN/qdapRegex
	sci-CRAN/sp
	>=sci-CRAN/taxlist-0.2.4
	>=dev-lang/R-3.5.0
	sci-CRAN/stringi
	sci-CRAN/vegdata
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
