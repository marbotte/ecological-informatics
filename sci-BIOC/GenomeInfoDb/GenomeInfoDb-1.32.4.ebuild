# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Utilities for manipulating chromosome names (see metadata)'
KEYWORDS="~amd64"
SRC_URI="https://bioconductor.org/packages/release/bioc/src/contrib/GenomeInfoDb_1.32.4.tar.gz"
LICENSE='Artistic-2'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND="
>=dev-lang/R-4.0.0
>=sci-BIOC/BiocGenerics-0.37.0
>=sci-BIOC/S4Vectors-0.25.12
>=sci-BIOC/IRanges-2.13.12
sci-CRAN/RCurl
sci-BIOC/GenomeInfoDbData
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

_UNRESOLVED_PACKAGES=(
)
