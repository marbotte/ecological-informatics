# Copyright 1999-2026 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='R Commander'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/${PN}_${PV}.tar.gz"
LICENSE='GPL-2+'

DEPEND="sci-CRAN/TeachingDemos
	>=dev-lang/R-3.5.0
	>=sci-CRAN/RcmdrMisc-2.10.2
	>=sci-CRAN/effects-4.0.3
	>=sci-CRAN/car-3.1.0
	sci-CRAN/abind
	dev-lang/R[tk]
	>=sci-CRAN/tcltk2-1.2.6
	>=sci-CRAN/relimp-1.0.5
	sci-CRAN/lme4
"
RDEPEND="${DEPEND-}"
