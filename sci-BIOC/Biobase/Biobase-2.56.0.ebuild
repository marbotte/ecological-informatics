# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Base functions for Bioconductor'
KEYWORDS="~amd64"
SRC_URI="https://bioconductor.org/packages/release/bioc/src/contrib/Biobase_2.56.0.tar.gz"
LICENSE='Artistic-2'

IUSE="${IUSE-}"
DEPEND="
>=dev-lang/R-2.10
>=sci-BIOC/BiocGenerics-0.27.1
"
RDEPEND="${DEPEND-}
"

