// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressMerkleTree {
  bytes32[] public merkleTree;
  uint256 public feeAmount = 1; 


  function addKey() public payable {
    require(msg.value >= feeAmount, "Insufficient fee for adding key");
    merkleTree.push(keccak256(abi.encodePacked(msg.sender))); 

  }


  function getMerkleTree() public view returns (bytes32[] memory) {
    return merkleTree;
  }
}
