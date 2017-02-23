# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

EGO_PN="gitlab.com/gitlab-org/gitlab-workhorse/..."

inherit golang-build golang-vcs-snapshot

DESCRIPTION="A smart reverse proxy for GitLab written in Go"
HOMEPAGE="https://gitlab.com/gitlab-org/gitlab-workhorse"
SRC_URI="https://gitlab.com/gitlab-org/gitlab-workhorse/repository/archive.tar.gz?ref=v${PV} -> ${P}.tar.gz"

KEYWORDS="~amd64"
LICENSE="MIT"
SLOT="0"
IUSE=""

src_prepare() {
	sed -i -e 's/VERSION=.*/VERSION=${PV}/' -e "1iexport GOPATH?=" -e "s/PREFIX=/PREFIX?=/" src/${EGO_PN%/*}/Makefile || die
}

src_compile() {
	emake GOPATH="${WORKDIR}/${P}/src/gitlab.com/gitlab-org/gitlab-workhorse/_build:$(get_golibdir_gopath)" -C src/${EGO_PN%/*}
}

src_install() {
	emake GOPATH="${WORKDIR}/${P}/src/gitlab.com/gitlab-org/gitlab-workhorse/_build:$(get_golibdir_gopath)" -C src/${EGO_PN%/*} DESTDIR="${D}" PREFIX=/usr install
	dodoc src/${EGO_PN%/*}/CHANGELOG src/${EGO_PN%/*}/README.md
}
