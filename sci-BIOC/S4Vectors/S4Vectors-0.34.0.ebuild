# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Foundation of vector-like and li... (see metadata)'
KEYWORDS="~amd64"
SRC_URI="https://bioconductor.org/packages/release/bioc/src/contrib/S4Vectors_0.34.0.tar.gz"
LICENSE='Artistic-2'

IUSE="${IUSE-}"
DEPEND=">=dev-lang/R-3.3.0
	>=sci-BIOC/BiocGenerics-0.37.0
"
RDEPEND="${DEPEND-}"

