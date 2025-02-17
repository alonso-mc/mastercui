// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Proxy {
    function deploy(bytes memory _code) external payable returns (address addr) {
        address addr;
        assembly {
            addr := create(callvalue(), add(_code, 0x20, mload(_code)))
        }
        require(addr != address(0), "deploy failed");
    }
}
