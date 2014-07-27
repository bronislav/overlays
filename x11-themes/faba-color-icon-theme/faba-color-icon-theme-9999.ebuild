# Copyright 2014 Anton Ilin
# Distributed under the terms of the MIT License
# $Header: $

EAPI=5

inherit git-r3

DESCRIPTION="Faba Icon Theme (monochrome)"
HOMEPAGE="http://mokaproject/faba-icon-theme"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

EGIT_REPO_URI="https://github.com/moka-project/faba-colors.git"

src_install () {
	insinto /usr/share/icons
	doins -r Faba-Ceru || die
	doins -r Faba-Lutu || die
	doins -r Faba-Mint || die
	doins -r Faba-Roja || die
	doins -r Faba-Verd || die
	doins -r Faba-Viol || die
}
