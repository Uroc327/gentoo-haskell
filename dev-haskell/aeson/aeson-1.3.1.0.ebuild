# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999
#hackport: flags: -developer,-fast

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast JSON parsing and encoding"
HOMEPAGE="https://github.com/bos/aeson"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="cffi"

RDEPEND=">=dev-haskell/attoparsec-0.13.0.1:=[profile?]
	>=dev-haskell/base-compat-0.9.1:=[profile?] <dev-haskell/base-compat-0.11:=[profile?]
	>=dev-haskell/dlist-0.6:=[profile?]
	>=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/hashable-1.1.2.0:=[profile?]
	>=dev-haskell/nats-1:=[profile?] <dev-haskell/nats-1.2:=[profile?]
	>=dev-haskell/scientific-0.3.4.7:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semigroups-0.18.2:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/tagged-0.8.3:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-1.2.3:=[profile?]
	>=dev-haskell/th-abstraction-0.2.2:=[profile?] <dev-haskell/th-abstraction-0.3:=[profile?]
	>=dev-haskell/time-locale-compat-0.1.1:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.5.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/uuid-types-1.0.3:=[profile?] <dev-haskell/uuid-types-1.1:=[profile?]
	>=dev-haskell/vector-0.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/base-orphans-0.5.3 <dev-haskell/base-orphans-0.7
		dev-haskell/base16-bytestring
		>=dev-haskell/generic-deriving-1.10 <dev-haskell/generic-deriving-1.13
		>=dev-haskell/hashable-1.2.4.0
		>=dev-haskell/hashable-time-0.2 <dev-haskell/hashable-time-0.3
		dev-haskell/hunit
		>=dev-haskell/integer-logarithms-1 <dev-haskell/integer-logarithms-1.1
		>=dev-haskell/quickcheck-2.10.0.1
		>=dev-haskell/quickcheck-instances-0.3.16
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2 )
"

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck >= 2.10.0.1 && < 2.11' 'QuickCheck >= 2.10.0.1'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag cffi cffi) \
		--flag=-developer \
		--flag=-fast
}