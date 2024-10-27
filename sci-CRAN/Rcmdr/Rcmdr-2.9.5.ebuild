# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='R Commander'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/Rcmdr_2.9-5.tar.gz"
LICENSE='GPL-2+'

DEPEND=">=dev-lang/R-3.5.0
	>=sci-CRAN/car-3.0.8
	>=sci-CRAN/relimp-1.0.5
	>=sci-CRAN/RcmdrMisc-2.7.1
	sci-CRAN/lme4
	>=sci-CRAN/effects-4.0.3
	dev-lang/R[tk]
	dev-lang/R[tk]
	sci-CRAN/abind
	sci-CRAN/tcltk2
"
RDEPEND="${DEPEND-}"
