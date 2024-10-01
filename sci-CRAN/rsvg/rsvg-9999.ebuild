# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='render svg images into pdf png postscript or bitmap arrays'
EGIT_REPO_URI="https://github.com/ropensci/rsvg.git"
LICENSE='GPL-2+'

IUSE="${IUSE-} "
DEPEND="dev-lang/R
	gnome-base/librsvg
"
