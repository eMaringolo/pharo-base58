accessing
alphabet
	^ alphabet
		ifNil: [ alphabet := self class alphabet ]