# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Scientific Journal and Sci-Fi Th... (see metadata)'
SRC_URI="http://cran.r-project.org/src/contrib/ggsci_${PV}.tar.gz"
LICENSE='GPL-3+'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"

DEPEND=">=dev-lang/R-3.5.0
	>=sci-CRAN/ggplot2-2.0.0
	sci-CRAN/scales
"
RDEPEND="${DEPEND-}"
