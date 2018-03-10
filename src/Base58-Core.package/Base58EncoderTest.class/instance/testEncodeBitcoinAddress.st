tests
testEncodeBitcoinAddress

 | encoder |
	encoder := Base58Encoder new.
	self assert: (encoder encodeCheck: self validAddressBytes) equals: self validAddressString 
	