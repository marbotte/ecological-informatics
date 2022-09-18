# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='SummarizedExperiment container'
KEYWORDS="~amd64"
SRC_URI="https://bioconductor.org/packages/release/bioc/src/contrib/GenomicRanges_1.48.0.tar.gz"
LICENSE='Artistic-2'

IUSE="${IUSE-}"
DEPEND="
>=dev-lang/R-4.0.0
>=sci-BIOC/GenomicRanges-1.41.5
>=sci-BIOC/MatrixGenerics-1.1.3
sci-BIOC/Biobase
>=sci-BIOC/BiocGenerics-0.37.0
>=sci-BIOC/S4Vectors-0.33.7
>=sci-BIOC/IRanges-2.23.9
>=sci-BIOC/GenomeInfoDb-1.13.1
>=sci-BIOC/DelayedArray-0.15.10

"
RDEPEND="${DEPEND-}
"

