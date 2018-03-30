pragma solidity ^0.4.18;

contract VersionedMappingWithStruct {
    struct VersionedUint {
        uint256 amount;
        uint32 version;
    }

    mapping(address => VersionedUint) balances;
    uint32 actualVersion;

    function setBalance(address addr, uint256 amount) public {
        balances[addr].amount = amount;
        balances[addr].version = actualVersion;
    }

    function nextVersion() public {
        actualVersion++;
    }

    function getBalance(address addr) public view returns (uint256) {
        if (balances[addr].version == actualVersion) {
            return balances[addr].amount;
        } else {
            return 0;
        }
    }
}
