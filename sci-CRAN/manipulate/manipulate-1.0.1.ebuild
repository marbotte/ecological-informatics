# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Interactive Plots for RStudio'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/manipulate_1.0.1.tar.gz"
LICENSE='GPL-2'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND=">=dev-lang/R-3.5.0
	sci-mathematics/rstudio
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
