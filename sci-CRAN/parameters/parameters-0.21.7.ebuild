# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit R-packages

DESCRIPTION='Processing of Model Parameters'
KEYWORDS="~amd64 ~x64-macos ~arm64-macos"
SRC_URI="http://cran.r-project.org/src/contrib/parameters_${PV}.tar.gz"
LICENSE='GPL-3'

DEPEND=">=sci-CRAN/bayestestR-0.13.2
	>=sci-CRAN/datawizard-0.9.1
	>=dev-lang/R-3.6
	>=sci-CRAN/insight-0.19.8
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"

_UNRESOLVED_PACKAGES=(
	'sci-CRAN/BayesFM'
	'sci-CRAN/cgam'
)
