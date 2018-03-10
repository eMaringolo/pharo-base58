I am Base58Encoder.

Base58 is a group of binary-to-text encoding schemes used to represent large integers as alphanumeric text. It is similar to Base64 but has been modified to avoid both non-alphanumeric characters and letters which might look ambiguous when printed. It is therefore designed for human users who manually enter the data, copying from some visual source, but also allows easy copy and paste because a double-click will usually select the whole string.

I can also perform Base58Check encoding and decoding.
Base58Check has the following features:
* One byte of version/application information.
 * Four bytes (32 bits) of SHA256-based error checking code. This code can be used to automatically detect and possibly correct typographical errors.
* An extra step for preservation of leading zeroes in the data.

When decoding I return a Base58CheckWrapper containing the version, payload and checksum.

The most commonly used alphabet is the one used by Bitcoin addresses, hence the default one.

But you can change it to use any other by sending:
#beBitcoin to use  Bitcoin alphabet
#beFlickr to use Flickr alphabet

Or passing an 58 elements alphabet to: #alphabet:

To encode a String as Base58, you first have to encode the characters as bytes using a character encoder, otherwise it will be converted using #asByteArray.

See also http://en.wikipedia.org/wiki/Base58