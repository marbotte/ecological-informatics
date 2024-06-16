# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Assessment of Regression Models Performance'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/performance_${PV}.tar.gz"
LICENSE='GPL-3'

R_SUGGESTS="
"
DEPEND=">=dev-lang/R-3.6
	>=sci-CRAN/datawizard-0.11.0
	>=sci-CRAN/bayestestR-0.13.2
	>=sci-CRAN/insight-0.20.0
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
