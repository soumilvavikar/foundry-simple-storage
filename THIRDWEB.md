# Third Web

## Not Free, Its paid

Third web helps deploy any contracts to ant of the ETH blockchains without the need of private key or rpc url.

## Commands

### Deploy Third Web

``` shell
npx thirdweb deploy
```

If this gives following error, read documentation at <https://support.thirdweb.com/troubleshooting-errors/7Y1BqKNvtLdBv5fZkRZZB3/issue-linking-device-on-the-authorization-page-via-thirdweb-cli/cn9LRA3ax7XCP6uxwRYdvx>

Execute

``` shell
npx thirdweb deploy -k <secret key>

or if you have added the secret key to the .env file, you can use the following

npx thirdweb deploy -k $THIRDWEB_KEY
```

- This will install third web
- Compile the contract and deploy
