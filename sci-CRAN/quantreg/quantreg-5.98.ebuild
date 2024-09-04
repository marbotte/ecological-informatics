# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Quantile Regression'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/quantreg_${PV}.tar.gz"
LICENSE='GPL-2+'

DEPEND=">=dev-lang/R-3.5
	virtual/survival
	virtual/Matrix
	sci-CRAN/SparseM
	virtual/Matrix
	virtual/MASS
	sci-CRAN/MatrixModels
"
RDEPEND="${DEPEND-}"
