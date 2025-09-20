# Copyright 1999-2025 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Parallel Programming Tools for Rcpp'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="https://cran.r-project.org/src/contrib/Archive/RcppParallel/RcppParallel_${PV}.tar.gz"
LICENSE='GPL-3+'

DEPEND=">=dev-lang/R-3.0.2"
RDEPEND="${DEPEND-}
	dev-cpp/tbb
"
