# Contract for my files.
This contract affirms that my files exists and are not tampered with in anyway, and no duplicates of it are also stored.

## Description:
Proves I own a file without revealing the actual file
Proves that the file exists and hasn't been tampered with(i.e checking for document integrity)

## How it works:
We store hash of the file and my name(owner) in pairs.
To prove existence we will store the hash of the file and the block timestamp also as pairs
Why store the hash?
  we store the hash to prove integrity since when the file is modified, the hash will change and our contract won't be able to find the file, proving that the file   was changed.
