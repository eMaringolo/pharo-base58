operations
convertByteArrayToInteger: data
	| bignumber |
	bignumber := 0.
	data
		do: [ :value | 
			value isZero
				ifFalse: [ bignumber := (bignumber << 8) + value ] ].
	^ bignumber