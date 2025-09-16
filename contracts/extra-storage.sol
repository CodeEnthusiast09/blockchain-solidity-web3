// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.8;

import "./simple-storage.sol"; 

// Inheritance is done by using th is keyword
contract ExtraStorage is SimpleStorage {

    // "override" keyword tells solidity that a function from a parent contract can be overwritten
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}