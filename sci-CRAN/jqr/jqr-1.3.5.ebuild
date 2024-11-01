# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION="Client for 'jq', a 'JSON' Processor"
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/jqr_${PV}.tar.gz"
LICENSE='MIT'

	
DEPEND=">=dev-lang/R-3.1.2
	sci-CRAN/magrittr
	sci-CRAN/lazyeval
	app-misc/jq
"
