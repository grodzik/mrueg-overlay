# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

USE_RUBY="ruby21 ruby22 ruby23"

RUBY_FAKEGEM_RECIPE_DOC="rdoc"

inherit ruby-fakegem

DESCRIPTION="Simple, efficient background processing for Ruby"
HOMEPAGE="https://rubygems.org/gems/sidekiq http://sidekiq.org https://github.com/mperham/sidekiq/"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/concurrent-ruby-1.0
	<dev-ruby/concurrent-ruby-2
	>=dev-ruby/connection_pool-2.2.0
	<dev-ruby/connection_pool-3
	>=dev-ruby/rack-protection-1.5
	>=dev-ruby/redis-3.3.2
	<dev-ruby/redis-4"
ruby_add_bdepend "test? ( >=dev-ruby/minitest-5.10.0
	<dev-ruby/minitest-6
	>=dev-ruby/rails-4
	>=dev-ruby/rake-10.0
	>=dev-ruby/redis-namespace-1.5.2
	<dev-ruby/redis-namespace-2 )"

RESTRICT="test" # requires local redis server
