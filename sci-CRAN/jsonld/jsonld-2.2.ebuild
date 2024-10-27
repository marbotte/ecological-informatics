# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='JSON for Linking Data'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/jsonld_${PV}.tar.gz"
LICENSE='BSD'

DEPEND="
	sci-CRAN/jsonlite
	>=sci-CRAN/curl-2.7
"
RDEPEND="${DEPEND-}"

_UNRESOLVED_PACKAGES=(
        'sci-CRAN/V8'
)

