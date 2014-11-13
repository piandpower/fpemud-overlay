# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v3
# $Header: $

EAPI="4"
PYTHON_DEPEND=2:2.7

inherit git-2 python versionator

DESCRIPTION="Menu service for Linux Deepin"
HOMEPAGE="https://github.com/linuxdeepin/deepin-menu"
EGIT_REPO_URI="http://github.com/linuxdeepin/deepin-menu.git"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/python-2.7:2.7"
DEPEND="${RDEPEND}
        dev-python/setuptools"

pkg_setup() {
	python_set_active_version 2.7
	python_pkg_setup
}

src_install() {
	python setup.py install \
		--root="${D}" \
		--optimize=2 || die "Install failed!"
}
