# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Ridgeline Plots in ggplot2'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/ggridges_0.5.6.tar.gz"
LICENSE='GPL-2'

IUSE="${IUSE-}"
DEPEND=">=dev-lang/R-3.2
	>=sci-CRAN/scales-0.4.1
	>=sci-CRAN/ggplot2-3.4.0
	>=sci-CRAN/withr-2.1.1
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
