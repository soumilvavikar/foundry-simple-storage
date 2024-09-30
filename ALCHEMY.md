# ALCHEMY - TESTNET

## Create Free Tier Account

URL: <https://alchemy.com/?a=673c802981>

## Create New Application

Step 1: Enter application name, description, and type. Hit Next.
Step 2: Choose the Chain on which we want to create the application. Choose `Ethereum`.
Step 3: Setup the Network to `Sepolia`.
Step 4: Go to Networks > Configure > And ONLY keep `Ethereum Sepolia` as enabled.

## Foundry Commands

NOTE: Foundry commands are same (REFER for details in the FOUNDRY_COMMANDS.md)

### Deploy

```shell
forge script script/DeploySimpleStorage.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $METAMASK_ACCT1_PRIVATE_KEY --broadcast
```
