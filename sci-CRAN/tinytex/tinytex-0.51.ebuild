# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Helper Functions to Install and ... (see metadata)'
SRC_URI="http://cran.r-project.org/src/contrib/tinytex_${PV}.tar.gz"
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
LICENSE='MIT'

IUSE="${IUSE-} r_suggests_rstudioapi r_suggests_testit"
DEPEND=">=sci-CRAN/xfun-0.29"
RDEPEND="${DEPEND-}"
