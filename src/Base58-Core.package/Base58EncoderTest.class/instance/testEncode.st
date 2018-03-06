tests
testEncode
	
	self validStrings do: [:pair |
		| encoder |
		encoder := Base58Encoder new.
		self assert: (encoder encode: pair first) equals: pair last
	]