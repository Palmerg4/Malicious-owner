// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract Attack {
    address owner;
    mapping(address => bool) eligibleUser;

    constructor() {
        owner = msg.sender;
    }

    function isEligible(address user) public view returns(bool) {
        if(user == owner) {
            return true;
        }
        return false;
    }

    function setEligible(address user) public {
        eligibleUser[user] = true;
    }

    fallback() external {}
}