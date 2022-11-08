// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "./Helper.sol";

contract Prey {
    Helper helper;

    constructor(address _helper) payable {
        helper = Helper(_helper);
    }

    function isEligible() public view returns(bool) {
        return helper.isEligible(msg.sender);
    }

    function addUser() public {
        helper.setEligible(msg.sender);
    }

    fallback() external {}
}

