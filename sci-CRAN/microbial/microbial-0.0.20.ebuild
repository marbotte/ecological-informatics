# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Do 16s Data Analysis and Generate Figures'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/microbial_0.0.20.tar.gz"
LICENSE='GPL-3'

IUSE="${IUSE-}"
DEPEND="
>=dev-lang/R-3.5.0
sci-CRAN/dplyr
sci-CRAN/plyr
sci-CRAN/magrittr
sci-CRAN/broom
sci-BIOC/phyloseq
sci-CRAN/vegan
sci-CRAN/rlang
sci-CRAN/ggplot2
sci-CRAN/ggpubr
sci-BIOC/DESeq2
sci-BIOC/SummarizedExperiment
sci-BIOC/S4Vectors
sci-CRAN/rstatix
sci-CRAN/tidyr
sci-CRAN/phangorn
sci-CRAN/randomForest
sci-BIOC/edgeR
sci-CRAN/testthat
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"
