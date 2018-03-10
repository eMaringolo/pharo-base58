tests
testEncodeCheck
	
	self validPairs do: [:assoc |
		| encoder |
		encoder := Base58Encoder new.
		self assert: (encoder encode: assoc value) equals: assoc key
	]