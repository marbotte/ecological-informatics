# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Helpers for Developing Command Line Interfaces'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/cli_${PV}.tar.gz"
LICENSE='MIT'

DEPEND=">=dev-lang/R-3.4"
RDEPEND="${DEPEND-} "
