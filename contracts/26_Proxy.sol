// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract DataLocations {
    struct MyStruct {
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function examples(uint[] calldata, string calldata) external returns (uint[] memory){
        myStructs[msg.sender] = MyStruct({foo:123, text: "bar"});
        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "foo";
        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo;
        uint[] memory memArr = new uint[](3);
        memArr[0] = 1;
        return memArr;
    }
}
