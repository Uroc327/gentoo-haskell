# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Broken test-suite: Could not find module ‘Network.Wai.Test’
inherit haskell-cabal

DESCRIPTION="Pagination in Yesod"
HOMEPAGE="https://github.com/joelteon/yesod-pagination"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # missing depends

RDEPEND="dev-haskell/esqueleto:=[profile?]
	dev-haskell/yesod:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
