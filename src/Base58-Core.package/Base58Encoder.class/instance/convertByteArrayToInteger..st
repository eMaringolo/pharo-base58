operations
convertByteArrayToInteger: data

	^data inject: 0 into: [:total :value  | (total << 8) + value ].
	