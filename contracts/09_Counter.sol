// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Counter {
    uint public count = 0;

    function inc() external {
        count += 1;
    }

    function dec() external {
        count -= 1;
    }
    
}  