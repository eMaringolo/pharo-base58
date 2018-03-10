encoding
decode: aString
	| data stream leadingZeros |
	aString ifEmpty: [ self error: 'Cannot decode an empty string' ].
	data := leadingZeros := 0.
	stream := ReadStream on: aString.
	[ stream atEnd ] whileFalse: [ data := data * 58 + ((self alphabet indexOf: stream next) - 1) ].
	stream reset.
	[ stream atEnd not and: [ stream next = $1 ] ] whileTrue: [ leadingZeros := leadingZeros + 1 ].
	^ (ByteArray new: leadingZeros)
		,
			(data isZero
				ifTrue: [ #[] ]
				ifFalse: [ data asByteArray ])