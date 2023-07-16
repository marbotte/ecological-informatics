# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Download and plot Open Street Map, Bing Maps and other tiled map sources.[...]'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/rosm_0.2.6.tar.gz"
LICENSE='GPL-2'

IUSE="${IUSE-}
"
DEPEND="dev-lang/R
	sci-CRAN/curl
	sci-CRAN/jpeg
	sci-CRAN/png
	sci-CRAN/abind
	sci-CRAN/sp
	sci-CRAN/rgdal
	sci-CRAN/rjson
	sci-CRAN/plyr
	sci-CRAN/prettymapr
"
RDEPEND="${DEPEND-}"
