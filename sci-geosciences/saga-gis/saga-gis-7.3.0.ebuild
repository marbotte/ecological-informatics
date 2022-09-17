# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5..10} )

inherit autotools python-r1

DESCRIPTION="System for Automated Geoscientific Analyses"
HOMEPAGE="http://www.saga-gis.org/"

readarray -d'-' -t NAMES<<<"${PN}";
FIRST_NAME=${NAMES[0]};

SRC_URI="mirror://sourceforge/${PN}/${FIRST_NAME}-${PV}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"
IUSE="python qhull libharu vigra svm las postgres swig curl odbc"

DEPEND="app-arch/unzip
	>=x11-libs/wxGTK-3.0.0
	sci-libs/proj
	>=sci-libs/gdal-2.4
	>=media-libs/tiff-4.0.7
	python? ( dev-lang/python )
	odbc? ( >=dev-db/unixODBC-2.3.5-r1 )
	curl? ( net-misc/curl )
	qhull? ( media-libs/qhull )
	libharu? ( media-libs/libharu )
	media-libs/opencv
	vigra? ( media-libs/vigra )
	svm? ( sci-libs/libsvm )
	las? ( sci-geosciences/liblas )
	postgres? ( dev-db/postgresql dev-db/postgis )
	swig? ( dev-lang/swig )"

RDEPEND="${DEPEND} ${PYTHON_DEPS}"
BDEPEND="${BDEPEND}"

S="${WORKDIR}/${FIRST_NAME}-${PV}"

src_prepare() {
	# Thanks to https://forums.gentoo.org/viewtopic-t-1061378.html
	default
	sed -i -e 's:-ldconfig:true:' src/saga_core/saga_api/Makefile.in
	sed -i -e 's:-ldconfig:true:' src/saga_core/saga_api/Makefile.am
	eautoreconf
}

src_configure() {
	ECONF_SOURCE="${S}" econf \
		$(use_enable python) \
		$(use_enable odbc) \
		$(use_with postgres postgresql)
}

pkg_postinst() {
	elog ""
	elog ""
	elog "Due to the automatic configuration of SAGA, functions might"
	elog "be enabled although the USE flags don't indicate them as such."
	elog "This happens, when the libraries required for a function is"
	elog "already present in the system, before SAGA is installed."
	elog "Additional pacakges will only be installed via USE flags."
}
