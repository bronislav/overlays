# Copyright 2014 Anton Ilin
# Distributed under the terms of the MIT LICENSE
# $Header: $

EAPI=5

inherit git-2 cmake-utils eutils

DESCRIPTION="A lightweight pannel/taskbar"
HOMEPAGE="https://github.com/bronislav/tint2"

LICENSE="GPL2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="battery examples tint2conf"

EGIT_REPO_URI="https://github.com/bronislav/tint2.git"
EGIT_COMMIT="v0.12_pre1"

COMMON_DEPEND="dev-libs/glib:2
  x11-libs/cairo
  x11-libs/pango[X]
  x11-libs/libX11
  x11-libs/libXinerama
  x11-libs/libXdamage
  x11-libs/libXcomposite
  x11-libs/libXrender
  x11-libs/libXrandr
  media-libs/imlib2[X]"

DEPEND="${COMMON_DEPEND}
  virtual/pkgconfig
  x11-proto/xineramaproto"

RDEPEND="${COMMON_DEPEND}
  tint2conf? ( x11-misc/tintwizard )"

src_configure() {
  local mycmakeargs=(
    $(cmake-utils_use_enable battery BATTERY)
    $(cmake-utils_use_enable examples EXAMPLES)
    $(cmake-utils_use_enable tint2conf TINT2CONF)

    # bug 296890
    "-DDOCDIR=/usr/share/doc/${PF}"
  )

  cmake-utils_src_configure
}

src_install() {
  cmake-utils_src_install
  rm -f "${D}/usr/bin/tintwizard.py"
}
