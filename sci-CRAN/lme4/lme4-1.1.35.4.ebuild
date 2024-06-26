# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Linear Mixed-Effects Models using Eigen and S4'
SRC_URI="http://cran.r-project.org/src/contrib/lme4_1.1-35.4.tar.gz"
LICENSE='GPL-2+'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"

DEPEND="virtual/lattice
	virtual/nlme
	>=dev-lang/R-3.5.0
	>=sci-CRAN/nloptr-1.0.4
	virtual/Matrix
	virtual/MASS
	virtual/boot
	>=sci-CRAN/minqa-1.1.15
"
RDEPEND="${DEPEND-}
	>=sci-CRAN/Rcpp-0.10.5
	>=sci-CRAN/RcppEigen-0.3.3.9.4
	virtual/Matrix
	${R_SUGGESTS-}
"
