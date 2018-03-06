tests
testDecode
	
	self validStrings do: [:pair |
		| encoder |
		encoder := Base58Encoder new.
		self assert: (encoder decode: pair second) equals: pair first
	]