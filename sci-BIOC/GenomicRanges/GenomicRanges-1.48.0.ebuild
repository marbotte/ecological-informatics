# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Representation and manipulation of genomic intervals'
KEYWORDS="~amd64"
SRC_URI="https://bioconductor.org/packages/release/bioc/src/contrib/GenomicRanges_1.48.0.tar.gz"
LICENSE='Artistic-2'

IUSE="${IUSE-}"
DEPEND="
>=dev-lang/R-4.0.0
>=sci-BIOC/BiocGenerics-0.37.0
>=sci-BIOC/S4Vectors-0.27.12
>=sci-BIOC/IRanges-0.27.12
>=sci-BIOC/GenomeInfoDb-1.15.2
>=sci-BIOC/XVector-0.29.2
"
RDEPEND="${DEPEND-}
"

