# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages git-r3

DESCRIPTION='t-distributed stochastic neighbor embedding for microbiota data'
EGIT_REPO_URI="https://github.com/opisthokonta/tsnemicrobiota.git"
LICENSE='MIT'

IUSE="${IUSE-}"
R_SUGGESTS="
"
DEPEND="dev-lang/R
	>=sci-CRAN/ape-4.1
	>=sci-CRAN/ggplot2-2.2.1
	>=sci-BIOC/phyloseq-1.20.0
	sci-CRAN/knitr
"
RDEPEND="${DEPEND-}
	${R_SUGGESTS-}
"

