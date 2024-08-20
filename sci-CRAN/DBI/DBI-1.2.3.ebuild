# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='R Database Interface'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/DBI_${PV}.tar.gz"
LICENSE='LGPL-2.1+'

DEPEND=">=dev-lang/R-3.0.0"
RDEPEND="${DEPEND-} "

_UNRESOLVED_PACKAGES=( 'sci-CRAN/RMariaDB' )
