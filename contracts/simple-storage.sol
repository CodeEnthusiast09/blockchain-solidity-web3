// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8; // IMPORTANT: you need to specify the version of solidity you want to use and then the SPDX-License-Identifier above 👆🏽

// Create contract object as done below

contract SimpleStorage {

// Types
    uint256 favoriteNumber;
    // bool isFavNumInited = false;
    // int256 myInt = 1;
    // string myString = "Hello World";
    // bytes32 favByte = "Hello World"; // byte32 is a string of 32 bytes, it will pad the string with 0
    // address myAddr = 0xD5bf5c62d765026047c70258d922db8B6e5bB00b;

// A struct is a way to create custom data types by grouping together variables of different data types into a single composite type.
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // uint256[] public anArray;
    People[] public people;


// dictionary or hash table
    mapping(string => uint256) public nameToFavoriteNumber;

    // The keyword internal is used to define the visibility of a function or state variable in Solidity. Besides internal, here are the other visibility options in Solidity:
    // public: Public functions can be called internally or externally and can be accessed and modified by anyone.
    // private: Private functions and state variables are only visible within the contract they are defined in. They cannot be accessed or modified from outside the contract, including by derived contracts.
    // external: External functions can only be called from outside the contract. They are more efficient when receiving large amounts of data because they use calldata which is cheaper than memory.
    // internal: Internal functions and state variables can be accessed only from within the contract they are defined in, or from derived contracts.
    // "virtual" keyword allows a function to be overidable
    function store(uint256 _favoriteNumber) public virtual  {
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}