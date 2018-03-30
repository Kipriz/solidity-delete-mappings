pragma solidity ^0.4.18;

contract ArrayWithLeadingIndex {

    address[] public addresses;
    uint256 public actualAddresses;

    function addAddress(address a) public {
        addresses.push(a);
    }

    function addAddressAlternatively(address a) public {
        if (addresses.length > actualAddresses) {
            addresses[actualAddresses++] = a;
        } else {
            addresses.push(a);
            actualAddresses++;
        }
    }

    function realDelete() public {
        delete addresses;
        actualAddresses = 0;
    }

    function virtualDelete() public {
        actualAddresses = 0;
    }

    function getAddresses() public view returns (address[]) {
        return addresses;
    }
}
