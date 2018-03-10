encoding
decodeCheck: aString
	| decoded decodedChecksum decodedPayload |
	decoded := (self decode: aString) asByteArray.
	decodedPayload := decoded
		copyFrom: 1
		to: decoded size - self checkSumSize.
	decodedChecksum := decoded
		copyFrom: decoded size - 3
		to: decoded size.
	^ decodedChecksum = (self checkSumBytesFor: decodedPayload)
		ifTrue: [ ^ Base58CheckWrapper
				version: decodedPayload first
				payload: (decodedPayload copyFrom: 2 to: decodedPayload size)
				checksum: decodedChecksum ]
		ifFalse: [ self error: 'Checksum failed' ]