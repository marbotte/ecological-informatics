# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Harrell Miscellaneous'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/Hmisc_4.8-0.tar.gz"
LICENSE='GPL-2+'

DEPEND="
	sci-CRAN/ggplot2
	virtual/cluster
	virtual/rpart
	virtual/nnet
	virtual/foreign
	sci-CRAN/gtable
	sci-CRAN/gridExtra
	sci-CRAN/data_table
	>=sci-CRAN/htmlTable-1.11.0
	sci-CRAN/viridis
	sci-CRAN/htmltools
	sci-CRAN/base64enc
	sci-CRAN/colorspace
	sci-CRAN/rmarkdown
	sci-CRAN/knitr
	sci-CRAN/Formula
"
RDEPEND="${DEPEND-}"
