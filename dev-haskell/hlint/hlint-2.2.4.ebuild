# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Source code suggestions"
HOMEPAGE="https://github.com/ndmitchell/hlint#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="ghc-lib +gpl +threaded"

RDEPEND=">=dev-haskell/aeson-1.1.2.0:=[profile?]
	>=dev-haskell/ansi-terminal-0.6.2:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?]
	>=dev-haskell/cpphs-1.20.1:=[profile?]
	>=dev-haskell/data-default-0.3:=[profile?]
	>=dev-haskell/extra-1.6.6:=[profile?]
	>=dev-haskell/filepattern-0.1.1:=[profile?]
	>=dev-haskell/haskell-src-exts-1.21:=[profile?] <dev-haskell/haskell-src-exts-1.23:=[profile?]
	>=dev-haskell/haskell-src-exts-util-0.2.5:=[profile?]
	>=dev-haskell/mtl-2.2.2:=[profile?]
	>=dev-haskell/refact-0.3:=[profile?]
	>=dev-haskell/syb-0.7:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/uniplate-1.5:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/yaml-0.5.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	gpl? ( >=dev-haskell/hscolour-1.21:=[profile?] )
	|| ( ~dev-haskell/ghc-lib-parser-8.8.1
		( >=dev-lang/ghc-8.8.1 <dev-lang/ghc-8.9.0 ) )
	ghc-lib? ( ~dev-haskell/ghc-lib-parser-8.8.1:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag ghc-lib ghc-lib) \
		$(cabal_flag gpl gpl) \
		$(cabal_flag threaded threaded)
}
