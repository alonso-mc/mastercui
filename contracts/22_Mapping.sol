// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Mapping
// How to declare a mapping (simple and nested)
// set. get, delete

//["a", "b", "c"]
// {"a": true, "b": true, "c": true,}
contract Mapping {
    mapping (address => uint) public  balances;
    mapping (address => mapping(address => bool)) public isFriend;

    function exmaples() external {
        balances[msg.sender] = 123;
        uint bal = balances[msg.sender];
        uint bal2 = balances[address(1)];
        balances[msg.sender] += 456; // 123 + 456;

        delete balances[msg.sender];

        isFriend[msg.sender][address(this)] = true;
    }
}
