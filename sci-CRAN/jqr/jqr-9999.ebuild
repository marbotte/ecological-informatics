# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION="Client for 'jq', a 'JSON' Processor"
EGIT_REPO_URI="https://github.com/ropensci/jqri.git"
LICENSE='MIT'

	
DEPEND=">=dev-lang/R-3.1.2
	sci-CRAN/magrittr
	sci-CRAN/lazyeval
	app-misc/jq
"
