# Security & Cryptography

## Entropy

* -a measure fo randomness
* Ex: Coin flip has `log_2(# of possiblilites) = log_2(2) = 1 bit`

## Hash Functions

* [Diceware - creating passwords from dice](https://en.wikipedia.org/wiki/Diceware)
* `hash(value: array<byte>) -> vector<byte, N>  (for some fixed N)`
* [Lifetime of crypto functions](https://valerieaurora.org/hash.html)
* Commitment Schemes

## Keys

* Key Derivation Functions
* Symmetric Crypto: Keygen(), encrpyt(plaintext, key) --> ciphertext, decrypt(ciphertext, k) --> m 
* Asymmetric Crypto: Keygen(), encrypt, decrypt, sign, verify
	* Diffie-Helman
	* Signing software: GPG (a rewrite of PGP)
	* web of trust - PGP
	* TOFU - Trust on First Use

## Applications

* Password Managers
* 2FA
* FDE
* Private Messaging - Signal or Keybase
* SSH

## Misc

* [Which crpyto should I use?](https://latacora.micro.blog/2018/04/03/cryptographic-right-answers.html)
* [Previous Year's Notes](https://missing.csail.mit.edu/2019/security/)
	* WebSec: https://www.eff.org/https-everywhere, uBlock Origin, [Multi-Account Containers](https://support.mozilla.org/en-US/kb/containers), 
	* GeneralSec: https://www.privacytools.io/
	* [Deniable Encryption](https://en.wikipedia.org/wiki/Deniable_encryption) - techniques where the existence of an encrypted file or message is deniable in the sense that an adversary cannot prove that the plaintext data exists.
