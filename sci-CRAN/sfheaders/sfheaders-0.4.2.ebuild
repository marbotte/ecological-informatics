# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Converts Between R Objects and S... (see metadata)'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/sfheaders_0.4.2.tar.gz"
LICENSE='MIT'

IUSE="${IUSE-}"
DEPEND=">=sci-CRAN/geometries-0.2.0
	sci-CRAN/Rcpp
"
RDEPEND="${DEPEND-}
	sci-CRAN/geometries
	sci-CRAN/Rcpp
"
