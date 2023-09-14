# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='World Map Data from Natural Earth'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/rnaturalearth_0.3.4.tar.gz"
LICENSE='MIT'

IUSE="${IUSE-}"
DEPEND=">=sci-CRAN/sf-0.3.4
	sci-CRAN/terra
	>=sci-CRAN/httr-1.1.0
	>=dev-lang/R-3.1.1
	>=sci-CRAN/sp-1.0.15
	sci-CRAN/jsonlite
"
RDEPEND="${DEPEND-}"
