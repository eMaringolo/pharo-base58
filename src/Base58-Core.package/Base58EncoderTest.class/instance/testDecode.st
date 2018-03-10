tests
testDecode
	(self validPairs reject: [ :each | each key isEmpty ])
		do: [ :pair | 
			| encoder |
			encoder := Base58Encoder new.
			self assert: (encoder decode: pair key) equals: pair value ]