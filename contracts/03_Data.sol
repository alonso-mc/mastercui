// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Data types - values and references
contract ValueTypes {
    bool public b = true;
    uint public u = 123; //2**256 -1
    int public i = -123; 
    int public  minInt = type(int).min;
    int public  maxInt = type(int).max;
    address public addr =  0x9fee7BbAD41B23734F4739c08fa490C76c98436d;
    bytes32 public  b32 = 0x7465737400000000000000000000000000000000000000000000000000000000;
}