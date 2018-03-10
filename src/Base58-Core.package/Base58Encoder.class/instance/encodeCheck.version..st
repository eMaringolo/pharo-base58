encoding
encodeCheck: aByteArray version: byte
	| versionedPayload |
	versionedPayload := byte asByteArray , aByteArray asByteArray.
	^ self encode: versionedPayload , (self checkSumBytesFor: versionedPayload)