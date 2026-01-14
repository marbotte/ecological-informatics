# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages git-r3

DESCRIPTION='Cross-Platform File System Opera... (see metadata)'
EGIT_REPO_URI="https://github.com/r-lib/fs.git"
LICENSE='MIT'
DEPEND=">=dev-lang/R-3.6"
RDEPEND="${DEPEND-} "

