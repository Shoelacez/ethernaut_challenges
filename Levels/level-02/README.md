**LEVEL NAME**
![img.png](images/img.png)

**OBECTIVE**
![img_1.png](images/img_1.png)

WHERE DOES THE TRICK LIE?

We assume the programmer of this contract made and error in naming their constructor(),

That is for `solidity v0.6.*` the constructor definition is as below:-
![img_2.png](images/img_2.png)

LOOKING AT THE SMART CONTRACT WE NOTICE THIS:

this is `Fal1out` different from the contract name `Fallout` 
thus it is not a constructior so just calling the `fal1out()` will make the deployer the owner of this smart contract
![img_3.png](images/img_3.png)


**FINALLY**

use an interface to interact with the `Fallout` contract.
First call the `Fal1out()` then check the `owner`

    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.0;
    interface Fallout {
        function owner() external view returns (address);
        function Fal1out() external payable;
    }

`


