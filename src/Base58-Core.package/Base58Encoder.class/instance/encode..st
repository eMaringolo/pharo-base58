encoding
encode: aByteArray
	| remainder data |
	data := aByteArray asByteArray.
	remainder := self convertByteArrayToInteger: data.
	^ (String
		streamContents: [ :s | 
			[ remainder >= 58 ]
				whileTrue: [ s nextPut: (self alphabet at: remainder \\ 58 + 1).
					remainder := remainder // 58 ].
			remainder isZero
				ifFalse: [ s nextPut: (self alphabet at: remainder + 1) ].

			"Pad with 1 if leading bytes are zero."
			(data notEmpty and: [ data first isZero ])
				ifTrue: [ | leadingZeros |
					leadingZeros := data readStream.
					[ leadingZeros atEnd not and: [ leadingZeros next isZero ] ]
						whileTrue: [ s nextPut: $1 ] ] ]) reversed