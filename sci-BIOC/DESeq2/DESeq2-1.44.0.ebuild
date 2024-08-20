# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Differential gene expression ana... (see metadata)'
KEYWORDS="~amd64"
SRC_URI="https://bioconductor.org/packages/release/bioc/src/contrib/DESeq2_${PV}.tar.gz"
LICENSE='GPL-3+'

DEPEND="
>=sci-BIOC/S4Vectors-0.23.18
sci-BIOC/IRanges
sci-BIOC/GenomicRanges
>=sci-BIOC/SummarizedExperiment-1.1.6
>=sci-BIOC/BiocGenerics-0.7.5
sci-BIOC/Biobase
sci-BIOC/BiocParallel
sci-BIOC/genefilter
sci-CRAN/locfit
sci-BIOC/geneplotter
sci-CRAN/ggplot2
sci-CRAN/RcppArmadillo
>=sci-CRAN/Rcpp-0.11.0
virtual/MASS
"
RDEPEND="${DEPEND-} ${R_SUGGESTS-}"

