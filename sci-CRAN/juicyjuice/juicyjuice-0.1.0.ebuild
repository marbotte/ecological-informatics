# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

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
	>=sci-CRAN/V8-4.2.0
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
