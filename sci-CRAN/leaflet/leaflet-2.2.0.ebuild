# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Create Interactive Web Maps with... (see metadata)'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/Archive/leaflet/leaflet_${PV}.tar.gz"
LICENSE='GPL-3'

DEPEND=">=dev-lang/R-3.1.0
	sci-CRAN/crosstalk
	sci-CRAN/magrittr
	sci-CRAN/markdown
	>=sci-CRAN/scales-1.0.0
	>=sci-CRAN/viridis-0.5.1
	sci-CRAN/htmltools
	sci-CRAN/base64enc
	>=sci-CRAN/htmlwidgets-1.5.4
	sci-CRAN/png
	sci-CRAN/RColorBrewer
	sci-CRAN/raster
	sci-CRAN/sp
	>=sci-CRAN/leaflet_providers-1.8.0
	sci-CRAN/rgdal
"
RDEPEND="${DEPEND-}"
