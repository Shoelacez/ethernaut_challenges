// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Privacy {
    // slot 0
    bool public locked = true;
    // slot 1
    uint256 public ID = block.timestamp;
    // slot 2 (takes 2B)
    uint8 private flattening = 10;
    // slot 2 (takes 2B)
    uint8 private denomination = 255;
    // slot 2 (takes 2B)
    uint16 private awkwardness = uint16(block.timestamp);
    // slot 3(element at 0),4(element at 1) and 5(element at 2)
    bytes32[3] private data;

    constructor(bytes32[3] memory _data) {
        data = _data;
    }
    // key: 0x5d98b8d651220ed41f00cd5bf0e3a079
    function unlock(bytes16 _key) public {
        require(_key == bytes16(data[2]));
        locked = false;
    }

    /*
        A bunch of super advanced solidity algorithms...

        ,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`
        .,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,
        *.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^         ,---/V\
        `*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.    ~|__(o.o)
        ^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'  UU  UU
    */
}