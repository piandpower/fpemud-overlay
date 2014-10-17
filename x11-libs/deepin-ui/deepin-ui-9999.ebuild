# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v3
# $Header: $

EAPI="4"
PYTHON_DEPEND=2:2.7

inherit git-2 python versionator

DESCRIPTION="UI toolkit for Linux Deepin."
HOMEPAGE="https://github.com/linuxdeepin/deepin-ui"
EGIT_REPO_URI="http://github.com/linuxdeepin/deepin-ui.git"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/python-2.7:2.7
		x11-libs/gtk+:2
		x11-libs/cairo
		dev-python/pygtk:2
		net-libs/webkit-gtk
		dev-python/pywebkitgtk
		sci-libs/scipy
		dev-python/python-xlib
		dev-python/deepin-utils
		|| ( dev-python/imaging dev-python/pillow )"
DEPEND="${RDEPEND}
		dev-python/pycairo
		dev-python/setuptools
		sys-devel/gettext"

pkg_setup() {
	python_set_active_version 2.7
	python_pkg_setup
}

src_install() {
	python setup.py install \
		--root="${D}" \
		--optimize=2 || die "Install failed!"

	mv ${D}/usr/dtk/theme ${D}/usr/$(get_libdir)/python2.7/site-packages/dtk || die
	mv ${D}/usr/dtk/locale ${D}/usr/share/ || die
	rm ${D}/usr/share/locale/*.po*
	rm -r ${D}/usr/dtk
}

