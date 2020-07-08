## VeeDo ##

VeeDo is a STARK-based Verifiable Delay Function (VDF) service. It is used for periodically
generating a secure random number every 820 blocks (~ 3 hours). The randomness is generated from a
block hash according to what is explained in *Computing the Randomness* section below.
A proof attesting to the validity of the computation is generated and sent to the STARK Verifier for
a verification  process (see the
[Verifier contract](https://github.com/starkware-libs/veedo/blob/master/contracts/MimcVerifier.sol)).
The Beacon contract registers the new randomness if the Verifier accepts the corresponding proof.

### API ###

The Beacon contract serves as the interface and has the following API:
1. getRandomness(uint256 blockNumber)
2. getLatestRandomness().

For full documentation of its API check the
[Beacon contract](https://github.com/starkware-libs/veedo/blob/master/contracts/BeaconContract.sol).

### Computing the Randomness ###

Denote the delay function by f (see the reference code for a simple implementation example).
The randomness is computed as follows:
1. Given a block, compute ```b:=keccak256(block_hash, ‘veedo’)```.
2. Compute the delay function seed ```s=<x,y>``` by taking the lowest 250 bits of b and split them
to a pair of 125-bit elements each:
    - ```x: = b & ((1<<125)-1)```
    - ```y: = b >> 125 & ((1<<125)-1)```
3. Compute f on ```s=<x,y>``` for n iterations.
4. Denote ```f(s,n):=<x_out, y_out>```. ```Randomness:= keccak256(x_out, y_out, ‘veedo’)```.


### Proof Statement ###

The proof is for the following statement: "```<x_out, y_out>``` is the result of calculating f on
```s=<x,y>``` for n iterations".


### Deployed Contract ###

[Verifier contract](https://etherscan.io/address/0x5a6a37b41865eb940c5dd4ffe162e53b7ee22090)

[Beacon contract](https://etherscan.io/address/0xC405fF8406bFfBc97bc46a1Ae5ECe55112DcF8f4)

