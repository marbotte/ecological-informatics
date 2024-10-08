# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Support Functions and Datasets f... (see metadata)'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="https://cran.r-project.org/src/contrib/MASS_7.3-61.tar.gz"
LICENSE='|| ( GPL-2 GPL-3 )'

DEPEND=">=dev-lang/R-4.4.0
	dev-lang/R[minimal]
"
RDEPEND="${DEPEND-}"
