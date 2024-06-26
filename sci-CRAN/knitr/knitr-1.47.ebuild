# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='A General-Purpose Package for Dy... (see metadata)'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/knitr_${PV}.tar.gz"
LICENSE='GPL-2+'

DEPEND=">=dev-lang/R-3.3.0
	>=sci-CRAN/yaml-2.1.19
	>=sci-CRAN/highr-0.11
	>=sci-CRAN/evaluate-0.15
	>=sci-CRAN/xfun-0.44
"
RDEPEND="${DEPEND-}
	virtual/pandoc
"
