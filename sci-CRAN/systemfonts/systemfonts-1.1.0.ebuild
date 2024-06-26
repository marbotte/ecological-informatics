# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='System Native Font Finding'
SRC_URI="http://cran.r-project.org/src/contrib/systemfonts_${PV}.tar.gz"
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
LICENSE='MIT'

DEPEND=">=dev-lang/R-3.2.0
	sci-CRAN/lifecycle
"
RDEPEND="${DEPEND-}
	>=sci-CRAN/cpp11-0.2.1
	media-libs/fontconfig
	media-libs/freetype
"
