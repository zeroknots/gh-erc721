// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/access/Ownable.sol";
import "./SBT721A.sol";

contract GithubPFP is ERC721A_SBT, Ownable {
    uint256 public number;
    string baseURI;

    constructor(string memory _baseURI, string memory name, string memory symbol) ERC721A_SBT(name, symbol) Ownable() {
        baseURI = _baseURI;
    }

    function updateBaseURI(string calldata _baseURI) public onlyOwner {
        baseURI = _baseURI;
    }

    function mint(address to, uint256 qty) public onlyOwner {
        _mint(to, qty);
    }

    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }
}
