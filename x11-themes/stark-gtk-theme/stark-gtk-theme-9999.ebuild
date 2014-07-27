# Copyright 2014 Anton Ilin
# Distributed under the terms of the MIT License
# $Header: $

EAPI=5

inherit git-r3

DESCRIPTION="Stark GTK Theme"
HOMEPAGE="http://mokaproject.com/stark-gtk-theme/"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

EGIT_REPO_URI="https://github.com/moka-project/stark-gtk-theme.git"

src_install () {
	insinto /usr/share/themes
	doins -r Stark-Ceru || die
	doins -r Stark-Dark || die
	doins -r Stark-Lutu || die
	doins -r Stark-Roja || die
	doins -r Stark-Ubun || die
	doins -r Stark-Verd || die
	doins -r Stark-Viol || die
}
