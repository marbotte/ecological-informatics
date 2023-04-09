# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Phylogenetic Tools for Comparati... (see metadata)'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/phytools_1.5-1.tar.gz"
LICENSE='GPL-2+'

IUSE="${IUSE-}"
DEPEND="
>=dev-lang/R-3.5.0
>=sci-CRAN/ape-4.0
sci-CRAN/clusterGeneration
sci-CRAN/expm
sci-CRAN/maps
virtual/nlme
sci-CRAN/optimParallel
sci-CRAN/coda
sci-CRAN/scatterplot3d
sci-CRAN/combinat
sci-CRAN/mnormt
virtual/cluster
sci-CRAN/numDeriv
sci-CRAN/plotrix
virtual/MASS
>=sci-CRAN/phangorn-2.3.1

"
RDEPEND="${DEPEND-}"
