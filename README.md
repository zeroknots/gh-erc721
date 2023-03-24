<img align="right" width="150" height="150" top="100" src="./public/readme.jpg">

# GH ERC721  ![license](https://img.shields.io/github/license/zeroknots/femplate?label=license) ![solidity](https://img.shields.io/badge/solidity-^0.8.17-lightgrey)

Mint ERC721 PFPs and host them on your GH

## Usage

**Factory**

Factory deployed @ 0x000

call `createGithubPFP`

```solidity
interface IGithubPFPFactory {
    event NewGithubPFP(address indexed owner, address indexed githubPFP);
    function createGithubPFP(string calldata baseURI, string calldata name, string calldata symbol) external returns (address);
}
```

Params:

```solidity
string memory baseURI = "https://github.com/zeroknots/gh-erc721/public/"; // point to your forked repo
string memory name = "ZeroknotsPFP"; // change dis
string memory symbol = "ZKPFP"; // change dis

address githubPFP = factory.createGithubPFP(baseURI, name, symbol);
GithubPFP(githubPFP).mint(alice, 10);
```




### Notable Mentions

- [femplate](https://github.com/refcell/femplate)
- [foundry](https://github.com/foundry-rs/foundry)
- [solmate](https://github.com/Rari-Capital/solmate)
- [forge-std](https://github.com/brockelmore/forge-std)
- [forge-template](https://github.com/foundry-rs/forge-template)
- [foundry-toolchain](https://github.com/foundry-rs/foundry-toolchain)


### Disclaimer

_These smart contracts are being provided as is. No guarantee, representation or warranty is being made, express or implied, as to the safety or correctness of the user interface or the smart contracts. They have not been audited and as such there can be no assurance they will work as intended, and users may experience delays, failures, errors, omissions, loss of transmitted information or loss of funds. The creators are not liable for any of the foregoing. Users should proceed with caution and use at their own risk._

See [LICENSE](./LICENSE) for more details.
