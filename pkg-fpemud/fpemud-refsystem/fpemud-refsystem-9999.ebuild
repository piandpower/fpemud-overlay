# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit git-2

DESCRIPTION="Fpemud Reference System"
SRC_URI=""
EGIT_REPO_URI="https://github.com/fpemud/fpemud-refsystem.git"

KEYWORDS="-* amd64 x86"
LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND="sys-apps/systemd
         app-admin/gentoo-bashrc
         app-portage/mirrorselect
         net-misc/wget
         sys-apps/portage
         dev-vcs/git
         dev-vcs/subversion
         dev-vcs/mercurial
         dev-vcs/bzr
         dev-vcs/cvs
         sys-boot/grub:2[grub_platforms_pc,grub_platforms_efi-64]
         sys-boot/efibootmgr
         sys-boot/os-prober
         sys-fs/lvm2
         sys-fs/squashfs-tools
         sys-fs/reiserfsprogs
         sys-fs/xfsprogs
         sys-fs/ntfs3g
         sys-apps/kmod[python]
         sys-apps/diffutils
         app-arch/cpio
         app-arch/xz-utils
         app-arch/zip
         sys-devel/bc
         dev-python/dbus-python
         dev-python/lxml
         dev-python/pylkc
         dev-python/pyudev"
DEPEND="${RDEPEND}
        virtual/pkgconfig"
