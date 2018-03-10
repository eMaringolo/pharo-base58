sample-data
validPairs
	"Test cases from https://github.com/bitcoin/bitcoin/blob/master/src/test/base58_tests.cpp"

	^ {('' -> (ByteArray new)).
	('1112'
		-> (ByteArray readHexFrom: '00000001')).
	('2g' -> (ByteArray readHexFrom: '61')).
	('a3gV'
		-> (ByteArray readHexFrom: '626262')).
	('aPEr'
		-> (ByteArray readHexFrom: '636363')).
	('2cFupjhnEsSn59qHXstmK2ffpLv2'
		->
			(ByteArray
				readHexFrom: '73696d706c792061206c6f6e6720737472696e67')).
	('1NS17iag9jJgTHD1VXjvLCEnZuQ3rJDE9L'
		->
			(ByteArray
				readHexFrom:
					'00eb15231dfceb60925886b67d065299925915aeb172c06647')).
	('ABnLTmg'
		-> (ByteArray readHexFrom: '516b6fcd0f')).
	('3SEo3LWLoPntC'
		->
			(ByteArray
				readHexFrom: 'bf4f89001e670274dd')).
	('3EFU7m'
		-> (ByteArray readHexFrom: '572e4794')).
	('EJDM8drfXA6uyA'
		->
			(ByteArray
				readHexFrom: 'ecac89cad93923c02321')).
	('Rt5zm'
		-> (ByteArray readHexFrom: '10c8511e')).
	('1111111111'
		->
			(ByteArray
				readHexFrom: '00000000000000000000'))}