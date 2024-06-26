# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Graphic Devices Based on AGG'
SRC_URI="http://cran.r-project.org/src/contrib/ragg_${PV}.tar.gz"
LICENSE='MIT'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"

DEPEND=">=sci-CRAN/systemfonts-1.0.3
	>=sci-CRAN/textshaping-0.3.0
"
RDEPEND="${DEPEND-}
	media-libs/libpng
	media-libs/freetype
	sci-CRAN/textshaping
	media-libs/tiff
	sci-CRAN/systemfonts
	media-libs/libjpeg-turbo
"
