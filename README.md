## VeeDo ##

VeeDo is a STARK-based Verifiable Delay Function (VDF) service. It is used for periodically
generating a secure random number every *pulse* blocks, i.e., every block such that its number
is divisible by the pulse (see the different pulse values in *Deployed Contract* below).
The randomness is generated from a block hash according to what is explained in
*Computing the Randomness* section. A proof attesting to the validity of the computation is
generated and sent to the STARK Verifier for a verification  process (see the
[Verifier contract](https://github.com/starkware-libs/veedo/blob/master/contracts/MimcVerifier.sol)).
The Beacon contract registers the new randomness if the Verifier accepts the corresponding proof.

### API ###

The Beacon contract serves as the interface and has the following API:
1. ```getRandomness(uint256 blockNumber)```
2. ```getLatestRandomness()```

For full documentation of its API check the
[Beacon contract](https://github.com/starkware-libs/veedo/blob/master/contracts/BeaconContract.sol).

### Computing the Randomness ###

Denote the delay function by f (see the [reference code](https://github.com/starkware-libs/veedo/blob/master/reference-code/delay_function.sage) for a simple implementation example).
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


### Deployed Contracts ###


|          | Mainnet              | Ropsten                 |
|----------|----------------------|-------------------------|
| Pulse    | 820 (every ~3 hours) |   500 (every ~2 hours)  |
| Beacon   | [0xC405fF8406bFfBc97bc46a1Ae5ECe55112DcF8f4](https://etherscan.io/address/0xC405fF8406bFfBc97bc46a1Ae5ECe55112DcF8f4) | [0x79474439753C7c70011C3b00e06e559378bAD040](https://ropsten.etherscan.io/address/0x79474439753C7c70011C3b00e06e559378bAD040) |
| Verifier | [0x5a6a37B41865EB940C5dD4fFe162e53B7EE22090](https://etherscan.io/address/0x5a6a37B41865EB940C5dD4fFe162e53B7EE22090) | [0x0009dA3Fe548eDE649089A862e702874D0CADa2F](https://ropsten.etherscan.io/address/0x0009dA3Fe548eDE649089A862e702874D0CADa2F) |

