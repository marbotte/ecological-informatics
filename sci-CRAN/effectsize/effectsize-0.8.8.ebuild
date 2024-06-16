# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Indices of Effect Size'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/effectsize_${PV}.tar.gz"
LICENSE='MIT'

DEPEND=">=dev-lang/R-3.6
	>=sci-CRAN/performance-0.11.0
	>=sci-CRAN/bayestestR-0.13.2
	>=sci-CRAN/insight-0.19.9
	>=sci-CRAN/parameters-0.21.6
	>=sci-CRAN/datawizard-0.9.1
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
