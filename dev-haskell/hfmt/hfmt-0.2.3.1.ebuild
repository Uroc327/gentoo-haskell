# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell source code formatter"
HOMEPAGE="https://github.com/danstiner/hfmt"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=app-emacs/hindent-5:=[profile?] <app-emacs/hindent-6:=[profile?]
	dev-haskell/ansi-wl-pprint:=[profile?]
	dev-haskell/cabal:=[profile?]
	dev-haskell/conduit:=[profile?]
	dev-haskell/conduit-combinators:=[profile?]
	dev-haskell/diff:=[profile?]
	dev-haskell/exceptions:=[profile?]
	>dev-haskell/haskell-src-exts-1.20:=[profile?]
	>=dev-haskell/hlint-2:=[profile?] <dev-haskell/hlint-3:=[profile?]
	dev-haskell/hunit:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/path:=[profile?]
	dev-haskell/path-io:=[profile?]
	>=dev-haskell/stylish-haskell-0.9:=[profile?] <dev-haskell/stylish-haskell-0.10:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/yaml:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"
