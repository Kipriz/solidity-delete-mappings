pragma solidity ^0.4.18;

contract VersionedMappingToMapping {

    mapping(uint32 => mapping(address => uint256)) balances;
    uint32 actualVersion;

    function VersionedMappingToMapping(){

    }

    function setBalance(address addr, uint256 amount) public {
        balances[actualVersion][addr].amount = amount;
        balances[actualVersion][addr].version = actualVersion;
    }

    function nextVersion() public {
        actualVersion++;
    }

    function getBalance(address addr) public view returns (uint256) {
        return balances[actualVersion][addr].amount;
    }
}
