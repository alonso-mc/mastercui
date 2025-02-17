// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract IfElse {
    function example(uint _x) external pure returns (uint) {
        if (_x < 10) {
            return 1;
        } else if (_x < 20) {
            return 2;
        }
        return 3;
    }

    function ternay(uint _x) external pure returns (uint) {
        return _x < 20 ? 1 : 2;
    }
}  