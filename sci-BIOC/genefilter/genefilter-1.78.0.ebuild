# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='genefilter: methods for filterin... (see metadata)'
KEYWORDS="~amd64"
SRC_URI="https://bioconductor.org/packages/release/bioc/src/contrib/genefilter_1.78.0.tar.gz"
LICENSE='Artistic-2'

IUSE="${IUSE-}"
DEPEND="
sci-BIOC/BiocGenerics
sci-BIOC/AnnotationDbi
sci-BIOC/Biobase
>=sci-BIOC/S4Vectors-0.9.42
sci-BIOC/annotate
virtual/survival
"
RDEPEND="${DEPEND-}"

