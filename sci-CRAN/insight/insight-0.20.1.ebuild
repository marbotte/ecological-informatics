# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Easy Access to Model Information... (see metadata)'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/insight_${PV}.tar.gz"
LICENSE='GPL-3'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND=">=dev-lang/R-3.6"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"

