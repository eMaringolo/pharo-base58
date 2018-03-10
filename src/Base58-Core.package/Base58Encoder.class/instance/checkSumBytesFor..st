checksum
checkSumBytesFor: versionedPayload
	^ (SHA256 doubleHashMessage: versionedPayload)
		copyFrom: 1
		to: self checkSumSize