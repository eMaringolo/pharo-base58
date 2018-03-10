accessing
alphabet
	"Returns the alphabet of receiver.
	Note: For optimization reasons we avoid copying the Bitcoin Base58 alphabet to the instance and instead delegate it to the class side constant."

	^ alphabet
		ifNil: [ self class alphabet ]