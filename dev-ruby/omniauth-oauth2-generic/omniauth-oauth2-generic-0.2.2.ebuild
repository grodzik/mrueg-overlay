# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

USE_RUBY="ruby21 ruby22 ruby23"

RUBY_FAKEGEM_RECIPE_TEST="rspec3"
RUBY_FAKEGEM_TASK_DOC=""

# Do not install generic binaries named setup and console
RUBY_FAKEGEM_BINWRAP=""

inherit ruby-fakegem

DESCRIPTION="Generic, Configurable OmniAuth Strategy for OAuth2 providers"
HOMEPAGE="https://gitlab.com/satorix/omniauth-oauth2-generic https://rubygems.org/gems/omniauth-oauth2-generic"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/omniauth-oauth2-1.0
	<dev-ruby/omniauth-oauth2-2"

#ruby_add_bdepend "test? (
#	dev-ruby/rack-test
#	dev-ruby/webmock )"

RESTRICT="test" # no tests included
