# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Foundation of external vector re... (see metadata)'
KEYWORDS="~amd64"
SRC_URI="https://bioconductor.org/packages/release/bioc/src/contrib/XVector_0.36.0.tar.gz"
LICENSE='Artistic-2'

IUSE="${IUSE-}"
DEPEND="
>=sci-BIOC/BiocGenerics-0.37.0
>=sci-BIOC/S4Vectors-0.27.12
sci-BIOC/zlibbioc
sci-BIOC/IRanges
sci-BIOC/S4Vectors
"
RDEPEND="${DEPEND-}
"
