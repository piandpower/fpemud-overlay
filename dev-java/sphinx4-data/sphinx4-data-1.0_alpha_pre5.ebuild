# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit java-pkg-2 java-pkg-simple versionator

MY_PN="sphinx4"

MY_PV1=$(get_version_component_range '3')
MY_PV2=$(get_version_component_range '4' | sed -r 's/([a-zA-Z]+)([0-9]+)/\2\1/g')
MY_PV=${MY_PV2}${MY_PV1}

MY_P="${MY_PN}-${MY_PV}-src"

DESCRIPTION="A speech recognizer written entirely in the Java programming language: Data"
HOMEPAGE="http://cmusphinx.sourceforge.net/"
SRC_URI="http://sourceforge.net/projects/cmusphinx/files/${MY_PN}/${MY_PV}/${MY_P}.zip"

LICENSE="GPL-2"
KEYWORDS="~amd64"
SLOT="0"

RDEPEND=">=virtual/jre-1.6"
DEPEND=">=virtual/jdk-1.6"

S="${WORKDIR}/${MY_P}"

src_compile() {
	mkdir empty
	jar cf ${PN}.jar -C empty .
	java-pkg_addres ${PN}.jar ${PN}/src/main/resources
}
