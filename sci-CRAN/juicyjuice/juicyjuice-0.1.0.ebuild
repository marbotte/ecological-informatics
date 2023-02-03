# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#
#
# NOTE Temporalily we will desactivate the dependency to v8 because it appears that installing this package through an ebuid does not work (something about setting the environment variable "DOWNLOAD_STATIC_LIBV8 = 1" for it to use a static V8 library does not work) so installing v8 on a R interpreter seems to be the sensible way to do for now, but that is dirty!!!
#	>=sci-CRAN/V8-4.2.0

EAPI=7

inherit R-packages

DESCRIPTION="HTML CSS integrated styles"
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/juicyjuice_0.1.0.tar.gz"
LICENSE='MIT'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND="
	dev-lang/R
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
