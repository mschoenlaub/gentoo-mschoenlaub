# Copyright 2017-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils autotools multilib-minimal

DESCRIPTION="A C/C++ implementation of a Sass compiler."
HOMEPAGE="http://libsass.org/"
SRC_URI="https://github.com/sass/libsass/archive/${PV}.tar.gz -> ${P}.tar.gz"
IUSE="static-libs"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
DEPEND=">=sys-devel/gcc-4.5:*"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}"

src_prepare() {
	echo "${PV}" > VERSION
	eautoreconf
	default
	multilib_copy_sources
}

multilib_src_configure() {
	local myconf=(
		$(use_enable static-libs static)
	)
	econf "${myconf[@]}"
}

multilib_src_install_all() {
	prune_libtool_files --all
}
