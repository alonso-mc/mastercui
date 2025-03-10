// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract FunctionModifier {
    bool public paused;
    uint public count;
    
    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier isPaused() {
        require(!paused, "paused");
        _;
    }

    function inc() external isPaused {
        count += 1;
    }

    function dec() external isPaused {
        count -= 1;
    }

    modifier cap(uint _x) {
        require(_x < 100, "x >= 100");
        _;
    }

    function incBy(uint _x) external  isPaused cap(_x) {
        count += _x;
    }

    modifier sandwich() {
        count += 10;
        _;
        count *= 2;
    }

    function foo() external sandwich {
        count += 1;
    }
}  