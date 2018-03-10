printing
printOn: aStream

	super printOn: aStream.
	aStream 
		nextPut: $(;
		print: self version;
		nextPut: $,;
		print: self payload hex;
		nextPut: $,;
		print: self checksum;
		nextPut: $)
		