tests
testEncodeDecodeNumbers
	
	0 to: 255 by: 8 do: [:index  |
		| encoder encoded number |
		encoder := Base58Encoder new.
		number := (1 << index) atRandom.
		encoded := (encoder encode: number).
		self assert: (encoder decode: encoded) equals: number
	]