# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Read and Write Ecological Metadata Language Files'
KEYWORDS="~amd64"
SRC_URI="http://cran.r-project.org/src/contrib/finch_${PV}.tar.gz"
LICENSE='MIT'

DEPEND="
	dev-lang/R
	>=sci-CRAN/data_table-1.10.0
	>=sci-CRAN/xml2-1.0.0
	>=sci-CRAN/EML-2.0.0
	sci-CRAN/digest
	>=sci-CRAN/hoardr-0.2.0
"
