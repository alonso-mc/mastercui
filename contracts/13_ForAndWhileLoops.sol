// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// require, revert, assert
// gas refund, state updates are reverteo
// custom error - save gas

contract Error {
    uint public num = 123;

    function testRequire(uint _i) public pure {
        require(_i <= 10, "i > 10");
        //code
    }
    function testRevert(uint _i) public pure {
        if (_i > 10) {
            revert("i > 10");
        }
    }
    function testAssert() public view {
        assert(num == 123);
    }
    function foo(uint _i) public {
        num += 1;
        require(_i < 5);
    }

    error MyError(address caller, uint i);

    function testCustomError(uint _i) public view {
        if (_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
}