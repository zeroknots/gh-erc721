pragma solidity ^0.8.13;

import "./GithubPFP.sol";

interface IGithubPFPFactory {
    event NewGithubPFP(address indexed owner, address indexed githubPFP);
    function createGithubPFP(string calldata baseURI, string calldata name, string calldata symbol) external returns (address);
}


contract GithubPFPFactory {
    event NewGithubPFP(address indexed owner, address indexed githubPFP);
    function createGithubPFP(string calldata baseURI, string calldata name, string calldata symbol) external returns (address) {
        GithubPFP githubPFP = new GithubPFP(baseURI, name, symbol);
        githubPFP.transferOwnership(msg.sender);
        emit NewGithubPFP(msg.sender, address(githubPFP));
        return address(githubPFP);
    }
}
