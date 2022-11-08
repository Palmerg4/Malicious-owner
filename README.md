# Passing a malicious contract as 'innocent'

Because `Attack.sol` has the same generated ABI as `Helper.sol`, it can be typecasted as the helper contract. Meaning a malicious owner can deploy `Prey.sol` and pass the attack contract address in the constructor.

# Prevention

Making the external helper contract public and verifying the code with mitigate this issue. Instead of typecasting the `_helper` address, create a new helper contract instance using `new Helper()`



```shell
npm install
npx hardhat test
```
