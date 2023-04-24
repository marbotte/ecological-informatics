# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='GeoJSON to Simple Feature Converter'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/geojsonsf_2.0.3.tar.gz"
LICENSE='MIT'

IUSE="${IUSE-}"
DEPEND=">=dev-lang/R-3.3.0
	sci-CRAN/Rcpp
"
RDEPEND="${DEPEND-}
	sci-CRAN/geometries
	sci-CRAN/Rcpp
	>=sci-CRAN/rapidjsonr-1.2.0
	>=sci-CRAN/jsonify-1.1.1
	>=sci-CRAN/sfheaders-0.2.2
"
