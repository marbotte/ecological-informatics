# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Provides infrastructure to accurately measure and compare the execution time'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/microbenchmark_${PV}.tar.gz"
LICENSE='BSD-2'

DEPEND="
	>=dev-lang/R-3.2.0
"
RDEPEND="${DEPEND-}"
