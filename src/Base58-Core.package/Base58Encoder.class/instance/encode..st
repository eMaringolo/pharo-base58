encoding
encode: aByteArray
	| bignumber data |
	data := aByteArray asByteArray.
	bignumber := self convertByteArrayToInteger: data.
	^ (String
		streamContents: [ :s | 
			[ bignumber >= 58 ]
				whileTrue: [ 
					s
						nextPut:
							(self alphabet at:
								bignumber \\ 58 + 1).
					bignumber := bignumber // 58.			
							 ].
			bignumber > 0
				ifTrue: [ s nextPut: (self alphabet at: bignumber + 1) ] ])
		reversed