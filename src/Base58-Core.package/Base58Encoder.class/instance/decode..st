encoding
decode: aString
	| data |
	data := 0.
	aString asByteArray
		do: [ :value | 
			| charIndex |
			charIndex := self class alphabet
				indexOf: value asCharacter.
			data := data + (58 * (charIndex - 1)) ].
	^ (String
		streamContents: [ :s | 
			[ data >= 256 ]
				whileTrue: [ | mod rem |
					data := data // 256.
					rem := data \\ 256.
					" val, mod = divmod(val, 256)"
					s nextPut: rem asCharacter ] ]) reverse