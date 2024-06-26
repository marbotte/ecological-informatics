# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Estimated Marginal Means, aka Least-Squares Means'
SRC_URI="http://cran.r-project.org/src/contrib/emmeans_${PV}.tar.gz"
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
LICENSE='|| ( GPL-2 GPL-3 )'

DEPEND=">=dev-lang/R-4.1.0
	sci-CRAN/mvtnorm
	>=sci-CRAN/estimability-1.4.1
	sci-CRAN/numDeriv
"
RDEPEND="${DEPEND-}"
