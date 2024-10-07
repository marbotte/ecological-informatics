# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# inherit R-packages
SLOT="0"
DESCRIPTION='Embedded JavaScript and WebAssembly Engine for R'
KEYWORDS="~amd64"
SRC_URI="https://cran.r-project.org/src/contrib/V8_${PV}.tar.gz"
LICENSE='MIT'

DEPEND=">=sci-CRAN/Rcpp-0.12.12
	>=sci-CRAN/jsonlite-1.0
	>=sci-CRAN/curl-1.0
	net-libs/nodejs
"
RDEPEND="${DEPEND-}
	sci-CRAN/Rcpp
	virtual/jdk
"

src_unpack() {
unpack ${A}
	if [[ -d "${PN//_/.}" ]] && [[ ! -d "${P}" ]]; then
		mv ${PN//_/.} ${P}
	fi	
}
src_configure() { :; }

src_compile() {
	MAKEFLAGS="CFLAGS=${CFLAGS// /\\ } CXXFLAGS=${CXXFLAGS// /\\ } FFLAGS=${FFLAGS// /\\ } FCFLAGS=${FCFLAGS// /\\ } LDFLAGS=${LDFLAGS// /\\ }" \
		R CMD INSTALL . -l "${WORKDIR}" --byte-compile --configure-vars='INCLUDE_DIR=/usr/include/node/ LIB_DIR=/usr/include/node/'
}

R-packages_src_install() {
	insinto /usr/$(get_libdir)/R/site-library
	doins -r "${WORKDIR}"/${PN//_/.}
}

