sample-data
validAddressBytes
	"Example address from https://en.bitcoin.it/wiki/Technical_background_of_version_1_Bitcoin_addresses.
	These are the output of 20 bytes from running RIPEMD160(SHA256(Public Key bytes))."

	^ByteArray fromHexString: '010966776006953D5567439E5E39F86A0D273BEE' 