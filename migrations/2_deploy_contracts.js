
const AddressMerkleTree = artifacts.require("AddressMerkleTree")


module.exports = function(deployer) {
    deployer.deploy(AddressMerkleTree);
};
