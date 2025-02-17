// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract FunctionOutputs {
    function returnMany() public pure returns (uint256, bool) {
        return (1, true);
    }
    function named() public pure returns  (uint x, bool b) {
        return (1, true);
    }
    function assigned() public pure returns (uint x, bool b) {
        x = 1;
        b = true;
    }
    function destructingAssigments() public pure {
        (, bool b) = returnMany();
    }
}
