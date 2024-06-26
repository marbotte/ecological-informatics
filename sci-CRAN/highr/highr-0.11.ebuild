# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Syntax Highlighting for R Source Code'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/highr_${PV}.tar.gz"
LICENSE='GPL-2+'

DEPEND=">=dev-lang/R-3.3.0
	>=sci-CRAN/xfun-0.18
"
RDEPEND="${DEPEND-}"
