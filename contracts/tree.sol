// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressMerkleTree {
  bytes32[] public merkleTree;
  uint256 public feeAmount = 1; 


  function addKey() public payable {
    require(msg.value >= feeAmount, "Insufficient fee for adding key");
    // require(!exists(keccak256(abi.encodePacked(msg.sender))), "Address already exists in the Merkle tree");
    merkleTree.push(keccak256(abi.encodePacked(msg.sender))); // Add sender's address hash as a leaf

    // Send the fee to the contract address
    // payable(address(this)).transfer(feeAmount);
  }


  function getMerkleTree() public view returns (bytes32[] memory) {
    return merkleTree;
  }
}
