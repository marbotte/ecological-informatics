# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3_{5..10} )
inherit autotools python-r1

DESCRIPTION="System for Automated Geoscientific Analyses"
HOMEPAGE="http://www.saga-gis.org/"
SRC_URI="https://sourceforge.net/projects/saga-gis/files/SAGA%20-%207/SAGA%20-%20${PV}/saga-${PV}.tar.gz/download -> ${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"
IUSE="python qhull libharu opencv vigra libsvm liblas postgresql postgis swig"
DEPEND="app-arch/unzip
>=x11-libs/wxGTK-3.0.0
sci-libs/proj
>=sci-libs/gdal-1.8.0
>=media-libs/jasper-3.0.6
>=media-libs/tiff-4.0.7
>=dev-db/unixODBC-2.3.2-r1
python? ( dev-lang/python )
qhull? ( media-libs/qhull )
libharu? ( media-libs/libharu )
opencv? ( media-libs/opencv )
vigra? ( media-libs/vigra )
libsvm? ( sci-libs/libsvm )
liblas? ( sci-geosciences/liblas )
postgresql? (
		dev-db/postgresql
		dev-db/postgis
	)
postgis? (
		dev-db/postgis
		dev-db/postgresql
	)
swig? ( dev-lang/swig )"
RDEPEND="${DEPEND} ${PYTHON_DEPS}"

src_prepare() {
    eapply_user
    eautoreconf -i
    sed -i -e 's:-ldconfig:true:' src/saga_core/saga_api/Makefile.in
    sed -i -e 's:-ldconfig:true:' src/saga_core/saga_api/Makefile.am
}

src_configure() {
    econf $(use_enable python)
}

src_install() {
    emake DESTDIR="${D}" install
#     dodoc README CHANGES
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

