tests
testDecodeCheck
	"Example taken from https://github.com/libbitcoin/libbitcoin-explorer/wiki/bx-base58check-decode"

	| encoder wrapper |
	encoder := Base58Encoder new.
	wrapper := Base58Encoder new
		decodeCheck: '12ANjYr7zPnxRdZfnmC2e6jjHDpBY'.
	self assert: wrapper version equals: 0.
	self
		assert: wrapper payload
		equals: (ByteArray fromHexString: '5361746f736869204e616b616d6f746f')