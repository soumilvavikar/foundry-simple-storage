# Foundry

## Install foundry 
```shell
In the Terminal - curl -L https://foundry.paradigm.xyz | bash
```

## Check foundry and anvil version 
```shell
forge --version
anvil --version
cast --version
chisel --version
```
## To update the foundry 
```shell
foundryup 
```
## To create new foundry project 
```shell
forge init
```
NOTE: Use --force for non empty directory

## To compile code 
```shell
forge build 

forge compile
```
## To test the contract using anvil
### Command to start anvil
anvil

### Setup Metmask 
Once anvil server is started, 
- Setup the Localhost network in the metamask 
    - Name: LocalHostAnvil
    - URL: http://127.0.0.1:8545
    - Chain Id: 31337
    - Currency: ETH
- Copy over the dummy private keys for the accounts from terminal (anvil) and add the accounts to Metamask. 
- You should get 1000 ETH

#### Anvil Test Account Info

Available Accounts
==================

(0) 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 (10000.000000000000000000 ETH)
(1) 0x70997970C51812dc3A010C7d01b50e0d17dc79C8 (10000.000000000000000000 ETH)
(2) 0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC (10000.000000000000000000 ETH)
(3) 0x90F79bf6EB2c4f870365E785982E1f101E93b906 (10000.000000000000000000 ETH)
(4) 0x15d34AAf54267DB7D7c367839AAf71A00a2C6A65 (10000.000000000000000000 ETH)
(5) 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc (10000.000000000000000000 ETH)
(6) 0x976EA74026E726554dB657fA54763abd0C3a0aa9 (10000.000000000000000000 ETH)
(7) 0x14dC79964da2C08b23698B3D3cc7Ca32193d9955 (10000.000000000000000000 ETH)
(8) 0x23618e81E3f5cdF7f54C3d65f7FBc0aBf5B21E8f (10000.000000000000000000 ETH)
(9) 0xa0Ee7A142d267C1f36714E4a8F75612F20a79720 (10000.000000000000000000 ETH)

Private Keys
==================

(0) 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
(1) 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d
(2) 0x5de4111afa1a4b94908f83103eb1f1706367c2e68ca870fc3fb9a804cdab365a
(3) 0x7c852118294e51e653712a81e05800f419141751be58f605c371e15141b007a6
(4) 0x47e179ec197488593b187f80a00eb0da91f1b9d0b13f8733639f19c30a34926a
(5) 0x8b3a350cf5c34c9194ca85829a2df0ec3153be0318b5e2d3348e872092edffba
(6) 0x92db14e403b83dfe3df233f83dfa3a0d7096f21ca9b0d6d6b8d88b2b4ec1564e
(7) 0x4bbbf85ce3377467afe5d46f804f221813b2bb87f24d81f60f1fcdbf7cbf4356
(8) 0xdbda1821b80551c9d65939329250298aa3472ba22feea921c0cf5d620ea67b97
(9) 0x2a871d0798f97d79848a013d4936a73bf4cc922c825d33c1cf7073dff6d409c6

## Deploy Contract to Localhost

### Without the Deploy Script
#### Preferred
```shell
forge create SimpleStorage --rpc-url http://127.0.0.1:8545 --interactive
```
NOTE: 
- This will ask for private key - enter one from above
- The rpc-url part is not needed for anvil

#### Other way (Not preferred, we should not put private-key in terminal like this.)
```shell
forge create SimpleStorage --rpc-url http://127.0.0.1:8545 --private-key <privatekey>
```

### With the deploy script (DeploySimpleStorage.s.sol)
#### This will run the script on a temporary anvil blockchain (and closes it once the script execution completed)
```shell
forge script script/DeploySimpleStorage.s.sol
```

#### Pass the rpc-url to deploy to local anvil blockchain 

##### This command will ONLY simulate
```shell
forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545
```
##### This command will DEPLOY to local blockchain (--broadcast and --private-key)
```shell
forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
```
This will say "Onchain execution completed"

##### Using .env file for simplifying the command (ONLY DEV Purposes, NEVER use .env file for PRODUCTION or CONTROLLED environments)

###### Step 1: Create .env file 
Refer to the .env file in the project for reference. 

###### Step 2: Load the .env file in the terminal
```shell
source .env
```

###### Step 3: Run the command 
```shell
echo $RPC_URL
echo $PRIVATE_KEY
forge script script/DeploySimpleStorage.s.sol --rpc-url $RPC_URL --broadcast --private-key $PRIVATE_KEY
```
