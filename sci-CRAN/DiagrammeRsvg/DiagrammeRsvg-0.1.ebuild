# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Export DiagrammeR Graphviz Graphs as SVG'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/DiagrammeRsvg_${PV}.tar.gz"
LICENSE='MIT'

_UNRESOLVED_PACKAGES=( '>=sci-CRAN/V8-0.10' )

