# Copyright 1999-2025 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Thematic Maps'
SRC_URI="http://cran.r-project.org/src/contrib/tmap_${PV}.tar.gz"
LICENSE='GPL-3'

DEPEND="sci-CRAN/s2
	sci-CRAN/leaflegend
	>=sci-CRAN/sf-0.9.3
	sci-CRAN/leafsync
	>=sci-CRAN/stars-0.4.2
	>=dev-lang/R-4.1
	sci-CRAN/htmltools
	sci-CRAN/htmlwidgets
	sci-CRAN/leafgl
	sci-CRAN/servr
	sci-CRAN/base64enc
	sci-CRAN/rlang
	>=sci-CRAN/leafem-0.2.4
	virtual/class
	sci-CRAN/cli
	>=sci-CRAN/leaflet-2.0.2
	>=sci-CRAN/cols4all-0.8.1
	>=sci-CRAN/tmaptools-3.1
	sci-CRAN/data_table
	sci-CRAN/maptiles
	>=sci-CRAN/units-0.6.1
	sci-CRAN/av
	sci-CRAN/gifski
	sci-CRAN/rsvg
"
RDEPEND="${DEPEND-}"

