# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Efficient manipulation of biological strings'
KEYWORDS="~amd64"
SRC_URI="https://bioconductor.org/packages/release/bioc/src/contrib/Biostrings_2.64.1.tar.gz"
LICENSE='Artistic-2'

IUSE="${IUSE-} r_suggests_affy r_suggests_runit"
R_SUGGESTS="
"
DEPEND="
>=dev-lang/R-3.5.0
>=sci-BIOC/BiocGenerics-0.37.0
>=sci-BIOC/IRanges-2.30.1
>=sci-BIOC/S4Vectors-0.21.13
>=sci-BIOC/XVector-0.29.2
sci-BIOC/GenomeInfoDb
"
RDEPEND="${DEPEND-}
sci-CRAN/crayon
sci-BIOC/S4Vectors
sci-BIOC/IRanges
sci-BIOC/XVector
${R_SUGGESTS-}
"

