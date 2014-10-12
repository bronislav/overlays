# Copyright 2014 Anton Ilin
# Distributed under the terms of the MIT License
# $Header: $

EAPI=5

inherit git-r3

DESCRIPTION="Faba Icon Theme extras"
HOMEPAGE="http://mokaproject/faba-icon-theme"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

EGIT_REPO_URI="https://github.com/moka-project/faba-icon-theme-extras.git"

src_install () {
	insinto /usr/share/icons
	doins -r Faba || die
}
