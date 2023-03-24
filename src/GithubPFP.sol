// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "solmate/tokens/ERC721.sol";
import "openzeppelin-contracts/contracts/access/Ownable.sol";

import "openzeppelin-contracts/contracts/utils/Strings.sol";


contract GithubPFP is ERC721, Ownable {
    uint256 public number;
    string baseURI;

    constructor(string memory _baseURI, string memory name, string memory symbol) ERC721(name, symbol) Ownable() {
        baseURI = _baseURI;
    }

    function updateBaseURI(string calldata _baseURI) public onlyOwner {
        baseURI = _baseURI;
    }

    function mint(address to, uint256 tokenId) public onlyOwner {
        _mint(to, tokenId);
    }

    function tokenURI(uint256 id) public view virtual override returns (string memory) {
        return string(abi.encodePacked(baseURI, Strings.toString(id)));
    }
}
