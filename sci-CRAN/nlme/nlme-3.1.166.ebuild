# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Linear and Nonlinear Mixed Effects Models'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/nlme_3.1-166.tar.gz"
LICENSE='GPL-2+'

DEPEND="virtual/lattice
	dev-lang/R[minimal]
	>=dev-lang/R-3.5.0
"
RDEPEND="${DEPEND-}"
