// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract ArrayReplaceLast {
   uint[] public nums = [1,2,3];
   uint[3] public numsFixed = [4,5,6];
   function examples() external {
     nums.push(4);
     uint x = nums[1];
     nums[2] = 777;
     delete nums[1];
     nums.pop();
     nums.length;
     uint[] memory a = new uint[](6);
     a[0] = 1;
     a[1] = 2;
   }
   function returnArray() external view returns (uint[] memory) {
     return nums;
   }
}  