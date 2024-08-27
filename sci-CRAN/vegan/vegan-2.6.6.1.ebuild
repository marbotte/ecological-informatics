# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Community Ecology Package'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/vegan_2.6-6.1.tar.gz"
LICENSE='GPL-2'

DEPEND=">=dev-lang/R-3.4.0
	virtual/mgcv
	>=sci-CRAN/permute-0.9.0
	virtual/cluster
	virtual/lattice
	virtual/MASS
"
RDEPEND="${DEPEND-} "
