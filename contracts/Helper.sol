// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract Helper {
    mapping(address => bool) eligibleUser;

    function isEligible(address user) public view returns(bool) {
        return eligibleUser[user];
    }

    function setEligible(address user) public {
        eligibleUser[user] = true;
    }

    fallback() external {}
}