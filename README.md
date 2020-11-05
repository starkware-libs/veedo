## VeeDo ##

VeeDo is a STARK-based Verifiable Delay Function (VDF) service.
VeeDo works in the Vending Machine model - a user can request a randomness for a specific input, sending payment in advance. An off-chain service picks up the request, computes the randomness and generates a proof attesting to the validity of the computation. The proof is then sent to the STARK Verifier for a verification  process (see the [Verifier contract](https://github.com/starkware-libs/veedo/blob/master/contracts/MimcVerifier.sol)). The Vending contract registers the new randomness if the Verifier accepts the corresponding proof and sends the payment to the off-chain service.
In case a request was not served, the user can reclaim the payment after sufficient time has passed.
VeeDo accepts payments both in ERC20 and in ETH. See below for a list of deployed contracts.


### API ###

The [Vending ERC20 contract](https://github.com/starkware-libs/veedo/blob/master/contracts/VendingMachineERC20.sol) has the following API:
1. ```addPayment(uint256 seed, uint256 n_iter, uint256 tag, uint256 paymentAmount)```
2. ```reclaimPayment(uint256 seed, uint256 n_iter, uint256 tag)```
3. ```prizes(uint256 seed, uint256 n_iter) view```
4. ```registeredRandomness(uint256 seed, uint256 n_iter) view```
5. ```payments(address sender, uint256 seed, uint256 n_iter, uint256 tag) view```

The [Vending ETH contract](https://github.com/starkware-libs/veedo/blob/master/contracts/VendingMachineEth.sol) has the following API:
1. ```addPayment(uint256 seed, uint256 n_iter, uint256 tag)```
2. ```reclaimPayment(uint256 seed, uint256 n_iter, uint256 tag)```
3. ```prizes(uint256 seed, uint256 n_iter) view```
4. ```registeredRandomness(uint256 seed, uint256 n_iter) view```
5. ```payments(address sender, uint256 seed, uint256 n_iter, uint256 tag) view```


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

### Delay and Security ###

VeeDo service has to complete a serial computation, that comprises a configurable number of iterations. The number of iterations determines the time delay until the randomness is available.
A longer delay increases the security since it means that any other party, possibly malicious, also has to wait for this long delay to achieve the VDF result.
Specifically when using the previous block hash as a seed, it would become harder to reorganize the blocks and replace the chosen block hash, as time passes.
VeeDo offers two different approximate delays, a 3.5-minute delay and a 7-minute delay, which corresponds to 335544319 and 671088639 iterations, respectivly.
The delays were measured on an Intel i7-7700K processor with 4 cores and 4 vcpus (8 total), with frequency 4.5Ghz.

### Prices ###

| Number of Iterations| Delay   | Price - Eth | Price - Dai |
|---------------------|---------|-------------|-------------|
|335544319            |3 minutes|0.2          |80           |
|671088639            |7 minutes|0.35         |140          |

*Prices may change from time to time due to fluctuations in the gas price.

### Deployed Contracts ###

|          | Mainnet              | Ropsten                 |
|----------|----------------------|-------------------------|
| Vending DAI | [0x14Ebeca483FA27Bc05c8dD2aFfA65425eb6906A2](https://mainnet.etherscan.io/address/0x14Ebeca483FA27Bc05c8dD2aFfA65425eb6906A2) | [0x45D88Ca5aF1eA87b8c38377b6B4455E75225db26](https://ropsten.etherscan.io/address/0x45D88Ca5aF1eA87b8c38377b6B4455E75225db26) |
| Vending ETH | [0xA9E99eb58358169159149710Ec518c206F363564](https://mainnet.etherscan.io/address/0xA9E99eb58358169159149710Ec518c206F363564) | [0xFd534c1e8062d95aEBde40f6A37B3f6836C25C79](https://ropsten.etherscan.io/address/0xFd534c1e8062d95aEBde40f6A37B3f6836C25C79) |
| Verifier | [0x0e110AD9d826d30073Dc6A5D35Efb857b9925B54](https://mainnet.etherscan.io/address/0x0e110AD9d826d30073Dc6A5D35Efb857b9925B54) | [0x70165E8Bea7cE6E6EC456e0eb1b1dD55c3Ca7811](https://ropsten.etherscan.io/address/0x70165E8Bea7cE6E6EC456e0eb1b1dD55c3Ca7811) |
| Accepted ```n_iter```| 335544319, 671088639 | 10239, 335544319 |
