# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='Continuous-Time Movement Modeling'
KEYWORDS="~amd64"
EGIT_REPO_URI="https://github.com/ctmm-initiative/ctmm.git"
LICENSE='GPL-3'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND=">=dev-lang/R-3.5.0
	sci-CRAN/Bessel
	sci-CRAN/data_table
	sci-CRAN/digest
	sci-CRAN/expm
	sci-CRAN/fasttime
	sci-CRAN/gsl
	sci-CRAN/manipulate
	sci-CRAN/numDeriv
	sci-CRAN/pbivnorm
	sci-CRAN/pracma
	sci-CRAN/raster
	sci-CRAN/rgdal
	sci-CRAN/shape
	sci-CRAN/sp
	sci-CRAN/statmod
	sci-CRAN/pbivnorm
	sci-CRAN/Gmedian
	sci-CRAN/parsedate
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

