# Copyright 2014 Anton Ilin
# Distributed under the terms of the MIT LICENSE
# $Header: $

EAPI=5

inherit git-2

DESCRIPTION="A lightweight pannel/taskbar"
HOMEPAGE="https://github.com/bronislav/tint2"

LICENSE="GPL2"
SLOT="0"
KEYWORDS="~x86 ~amd64"

EGIT_REPO_URI="https://github.com/bronislav/tint2.git"
EGIT_COMMIT="v0.12_pre1"

src_configure() {
  econf
}

src_install() {
  emake DESTDIR="${D}" install
}
