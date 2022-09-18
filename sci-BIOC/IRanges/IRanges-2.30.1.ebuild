# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Foundation of integer range mani... (see metadata)'
KEYWORDS="~amd64"
SRC_URI="https://bioconductor.org/packages/release/bioc/src/contrib/IRanges_2.30.1.tar.gz"
LICENSE='Artistic-2'

IUSE="${IUSE-} r_suggests_biocstyle r_suggests_runit r_suggests_xvector"
DEPEND=">=dev-lang/R-4.0.0
	>=sci-BIOC/BiocGenerics-0.39.2
	>=sci-BIOC/S4Vectors-0.33.3
"
RDEPEND="${DEPEND-}
	sci-BIOC/S4Vectors
	${R_SUGGESTS-}
"

