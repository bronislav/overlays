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

EGIT_REPO_URI="https://github.com/moka-project/faba-mono-icons.git"

src_install () {
	insinto /usr/share/icons
	doins -r Faba-Mono || die
}
