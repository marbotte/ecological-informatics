# Copyright 1999-2025 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages git-r3

DESCRIPTION='Phylogenetic Tools for Comparati... (see metadata)'
EGIT_REPO_URI="https://github.com/liamrevell/phytools.git"
LICENSE='GPL-2+'
DEPEND="sci-CRAN/coda
	sci-CRAN/combinat
	sci-CRAN/clusterGeneration
	>=sci-CRAN/phangorn-2.3.1
	>=dev-lang/R-3.5.0
	sci-CRAN/numDeriv
	virtual/nlme
	virtual/cluster
	virtual/MASS
	sci-CRAN/maps
	sci-CRAN/DEoptim
	sci-CRAN/doParallel
	sci-CRAN/foreach
	sci-CRAN/optimParallel
	sci-CRAN/scatterplot3d
	>=sci-CRAN/ape-5.7
	sci-CRAN/expm
	sci-CRAN/mnormt
"
RDEPEND="${DEPEND-}"
