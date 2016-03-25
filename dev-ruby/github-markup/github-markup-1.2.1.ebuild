# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
USE_RUBY="ruby20 ruby21"

RUBY_FAKEGEM_RECIPE_TEST="rake"
RUBY_FAKEGEM_RECIPE_DOC="rdoc"
RUBY_FAKEGEM_EXTRADOC="HISTORY.md README.md"

inherit ruby-fakegem

DESCRIPTION="Used on GitHub when rendering README or any other rich text file"
HOMEPAGE="https://github.com/github/markup"
#SRC_URI="https://github.com/github/markup/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND+=" dev-python/docutils
	virtual/perl-Pod-Simple"
# see lib/github/markups.rb:
#   need one markdown parser, runtime switchable
ruby_add_rdepend "|| (
		dev-ruby/github-markdown
		dev-ruby/redcarpet
		dev-ruby/rdiscount
		dev-ruby/maruku
		dev-ruby/kramdown
		dev-ruby/bluecloth
		)
	dev-ruby/posix-spawn
	dev-ruby/redcloth
	>=dev-ruby/rdoc-3.6.1
	dev-ruby/org-ruby
	dev-ruby/creole
	dev-ruby/wikicloth
	dev-ruby/asciidoctor"
