# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='A unified framework for working ... (see metadata)'
KEYWORDS="~amd64"
SRC_URI="https://bioconductor.org/packages/release/bioc/src/contrib/DelayedArray_0.22.0.tar.gz"
LICENSE='Artistic-2'

IUSE="${IUSE-}"
DEPEND=">=sci-BIOC/BiocGenerics-0.37.0
	virtual/Matrix
	>=sci-BIOC/S4Vectors-0.27.2
	>=dev-lang/R-4.0.0
	>=sci-BIOC/IRanges-2.17.3
>=sci-BIOC/MatrixGenerics-1.1.3
"
RDEPEND="${DEPEND-}
"
