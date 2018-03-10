tests
testReflexivity
	| string encoder |
	encoder := Base58Encoder new.
	string := 'Pharo is yours'.
	self
		assert:
			(encoder decode: (encoder encode: string))
				asByteArray asString
		equals: string