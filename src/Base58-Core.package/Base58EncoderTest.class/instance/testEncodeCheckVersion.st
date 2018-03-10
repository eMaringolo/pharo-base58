tests
testEncodeCheckVersion
	"Example taken from https://github.com/libbitcoin/libbitcoin-explorer/wiki/bx-base58check-encode"

	| encoder |
	encoder := Base58Encoder new.
	self
		assert:
			(encoder
				encodeCheck:
					(ByteArray
						fromHexString: '031bab84e687e36514eeaf5a017c30d32c1f59dd4ea6629da7970ca374513dd006')
				version: 42)
		equals: '7DTXS6pY6a98XH2oQTZUbbd1Z7P4NzkJqfraixprPutXQVTkwBGw'