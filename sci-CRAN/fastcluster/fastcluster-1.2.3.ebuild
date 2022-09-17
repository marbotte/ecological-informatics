# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='R Interface to a PostGIS Database'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/fastcluster_1.2.3.tar.gz"
LICENSE='GPL-2'

IUSE="${IUSE-}"
DEPEND="
>=dev-lang/R-3.0.0
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

