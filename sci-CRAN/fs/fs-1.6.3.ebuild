# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Cross-Platform File System Opera... (see metadata)'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/Archive/fs/fs_${PV}.tar.gz"

LICENSE='MIT'

DEPEND=">=dev-lang/R-3.6"
RDEPEND="${DEPEND-} "
