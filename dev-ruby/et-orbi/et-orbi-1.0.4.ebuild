# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

USE_RUBY="ruby21 ruby22 ruby23"

RUBY_FAKEGEM_RECIPE_TEST="rspec3"
RUBY_FAKEGEM_TASK_DOC=""

inherit ruby-fakegem

DESCRIPTION="Time zones for fugit and rufus-scheduler. Urbi et Orbi."
HOMEPAGE="http://github.com/floraison/et-orbi https://rubygems.org/gems/et-orbi"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_rdepend "dev-ruby/tzinfo"

RESTRICT="test" # no tests included
