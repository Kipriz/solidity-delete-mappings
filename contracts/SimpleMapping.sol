pragma solidity ^0.4.18;

contract SimpleMapping {
    mapping(address => uint256) balances;

    function setBalance(address addr, uint256 amount) public {
        balances[addr] = amount;
    }

    function resetBalance(address addr) public {
        delete balances[addr];
    }
}