// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "./Helper.sol";

contract Prevention {
    Helper public helper;

    constructor() {
        helper = new Helper();
    }
}

