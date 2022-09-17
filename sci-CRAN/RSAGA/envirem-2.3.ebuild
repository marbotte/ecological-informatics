# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Generation of bioclimatic rasters that are complementary to the typical 19 bioclim variables.'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/envirem_2.3.tar.gz"

LICENSE='GPL-3'

IUSE="${IUSE-}"
R_SUGGESTS=""
DEPEND="
>=dev-lang/R-3.0.0
sci-CRAN/palinsol
sci-CRAN/raster
sci-CRAN/rSAGA
sci-CRAN/sf
sci-CRAN/knitr
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"

