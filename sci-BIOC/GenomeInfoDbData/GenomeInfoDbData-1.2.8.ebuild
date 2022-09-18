# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Species and taxonomy ID look up tables (see metadata)'
KEYWORDS="~amd64"
SRC_URI="https://bioconductor.org/packages/release/data/annotation/src/contrib/GenomeInfoDbData_1.2.8.tar.gz"
LICENSE='Artistic-2'

IUSE="${IUSE-}"

DEPEND="
>=dev-lang/R-3.5.0
"
RDEPEND="${DEPEND-}
"
