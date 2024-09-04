# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='S4 Generic Summary Statistic Functions that Operate on Matrix-Like Objects'
KEYWORDS="~amd64"
SRC_URI="https://bioconductor.org/packages/release/bioc/src/contrib/MatrixGenerics_${PV}.tar.gz"
LICENSE='Artistic-2'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND="
>=dev-lang/R-4.0.0
>=sci-CRAN/matrixStats-1.0.0
"
RDEPEND="${DEPEND-}"

