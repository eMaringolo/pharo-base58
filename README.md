# pharo-base58
Base58 and most importantly [Base58Check](https://en.bitcoin.it/wiki/Base58Check_encoding) encoder/decoder for [Pharo](https://pharo.org).

Base58 is mostly used in cryptocurrencies such as Bitcoin, but it was also used by Flickr. This encoder supports both alphabets.

## API

### `#encode: aByteArray`
Encodes aByteArray to a Base58 string
### `#decode: aString`
Decodes to a ByteArray a Base58 encoded string
### `encodeCheck: aByteArray version: anInteger`
Encodes aByteArray using Base58Check with anInteger as version byte.
###  `encodeCheck: aByteArray`
Same as previous with `0` as version byte.
### `decodeCheck: aString`
Decodes a Base58Check encoded string, returns a `Base58CheckWrapper` instance, that responds to `version`, `payload` and `checksum`.


## Examples

### Generating a Bitcoin address
Converting the RIPEMD160 20 byte hash `010966776006953D5567439E5E39F86A0D273BEE` to a Bitcoin P2PKH address
```smalltalk
| encoder |
encoder := Base58Encoder new.
(encoder encodeCheck: ByteArray readHexFrom: '010966776006953D5567439E5E39F86A0D273BEE') 
"'16UwLL9Risc3QfPqBUvKofHmBQ7wMtjvM'"
 ```

```smalltalk
| encoder |
encoder := Base58Encoder new.
(encoder decode: 'BJBRbygJtzBfp4gjJG2iqL') asString  
"'Satoshi Nakamoto'"
 ```

See the test suite `Base58EncoderTest` for more examples.

 ### Remarks
 Base58 converts leading zero bytes in the input to '1' characters in the output, 
 so an hex string `0001` or `#[0 0 0 1]` ByteArray will be encoded as `1112`, 
 so leading zeros in the input are significant.
 
 
