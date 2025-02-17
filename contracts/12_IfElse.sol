// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract ForAndWhileLoops {
    function loops() external pure {
        for (uint256 i = 0; i < 10; i++) {
            // code
            if (i == 3) continue;
            // more code
            if (i == 5) break;
        }
        uint256 j = 0;
        while (j < 10) {
            j++;
        }
    }
    function sum(uint _n) external pure returns (uint) {
        uint s;
        for(uint i = 1; i<= _n; i++) {
            s+= i;
        }
        return s;
    }
}
