accessing
alphabet: aString
	alphabet asSet size == 58
		ifTrue: [ alphabet := aString ]
		ifFalse: [ self
				error: 'Alphabet size must be exactly of 58 different elements' ]