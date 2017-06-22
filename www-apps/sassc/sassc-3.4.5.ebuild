# Copyright 2017-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils autotools

DESCRIPTION="A C/C++ implementation of a Sass compiler."
HOMEPAGE="http://libsass.org/"
SRC_URI="https://github.com/sass/sassc/archive/${PV}.tar.gz -> ${P}.tar.gz"
DOCS=""
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
DEPEND="=dev-libs/libsass-${PV}:="
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}"

src_prepare() {
	echo "${PV}" > VERSION
	eautoreconf
	default
}
