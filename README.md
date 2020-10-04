## VeeDo ##

VeeDo is a STARK-based Verifiable Delay Function (VDF) service.
VeeDo works in the Vending Machine model - a user can request a randomness for a specific input, sending payment in advance. An off-chain service picks up the request, computes the randomness and generates a proof attesting to the validity of the computation. The proof is then sent to the STARK Verifier for a verification  process (see the [Verifier contract](https://github.com/starkware-libs/veedo/blob/master/contracts/MimcVerifier.sol)). The [Vending contract](https://github.com/starkware-libs/veedo/blob/master/contracts/VendingMachineERC20.sol) registers the new randomness if the Verifier accepts the corresponding proof and sends the payment to the off-chain service.
In case a request was not served, the user can reclaim the payment after sufficient time has passed.

### API ###

The [Vending contract](https://github.com/starkware-libs/veedo/blob/master/contracts/VendingMachineERC20.sol)
serves as the interface and has the following API:
1. ```addPayment(uint256 seed, uint256 n_iter, uint256 tag, uint256 paymentAmount)```
2. ```reclaimPayment(uint256 seed, uint256 n_iter, uint256 tag)```
3. ```prizes(uint256 seed, uint256 n_iter) view```
4. ```registeredRandomness(uint256 seed, uint256 n_iter) view```
5. ```payments(address sender, uint256 seed, uint256 n_iter, uint256 tag) view```

Full implementation can be found in the [code](https://github.com/starkware-libs/veedo/blob/master/contracts/VendingMachineERC20.sol).


### Computing the Randomness ###

Denote the delay function by ```f``` (see the [reference code](https://github.com/starkware-libs/veedo/blob/master/reference-code/delay_function.sage) for a simple implementation example).
The randomness on ```(seed, n_iter)``` is computed as follows:
1. Compute ```b:=keccak256(uint256 seed, string ‘veedo’)```.
2. Compute the delay function input ```input=<x_in,y_in>``` by taking the lowest 250 bits of ```b```
and splitting them to a pair of 125-bit elements each:
    - ```x_in: = b & ((1<<125)-1)```
    - ```y_in: = b >> 125 & ((1<<125)-1)```
3. Compute ```f``` on ```input=<x_in,y_in>``` for ```n_iter``` iterations.
4. Denote ```f(input,n_iter):=<x_out, y_out>```. ```Randomness:= keccak256(x_out, y_out, ‘veedo’)```.


### Proof Statement ###

The proof is for the following statement: "```<x_out, y_out>``` is the result of calculating ```f```
on ```input=<x_in,y_in>``` for ```n_iter``` iterations".


### Deployed Contracts ###

|          | Mainnet              | Ropsten                 |
|----------|----------------------|-------------------------|
| Vending  | Currently N/A | [0x45D88Ca5aF1eA87b8c38377b6B4455E75225db26](https://ropsten.etherscan.io/address/0x45D88Ca5aF1eA87b8c38377b6B4455E75225db26) |
| Verifier | Currently N/A | [0x70165E8Bea7cE6E6EC456e0eb1b1dD55c3Ca7811](https://ropsten.etherscan.io/address/0x70165E8Bea7cE6E6EC456e0eb1b1dD55c3Ca7811) |
| Accepted ```n_iter```| Currently N/A | 10239 |

