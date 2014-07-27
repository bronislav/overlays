# Copyright 2014 Anton Ilin
# Distributed under the terms of the MIT License
# $Header: $

EAPI=5

inherit git-r3

DESCRIPTION="Moka GTK Theme"
HOMEPAGE="http://mokaproject/moka-gtk-theme"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

EGIT_REPO_URI="https://github.com/moka-project/moka-gtk-theme.git"

src_install () {
	insinto /usr/share/themes
	doins -r Moka || die
	doins -r Moka-Dark || die
}
