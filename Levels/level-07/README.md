**LEVEL 07: FORCE**
![img.png](img.png)

**TASK AT HAND**
![img_1.png](img_1.png)

**CHECKING THE BALANCE OF THE FORCE CONTRACT**


**FROM THE "THINGS THAT MIGHT HELP"**,

They suggested that the best way to beat this challenge is;

![img_2.png](img_2.png)

THE APPROACH I USED;

I went with the option to attack the smart contract and tried some low level calls but that was not possible because interactions with the `Force contract` at a low level required that the `fallback()` and `receive()` were declared in the contract.

![img_3.png](img_3.png)

AFTER CALLING THE ATTACKER CONTRACT;

Call the `sendToForce()` function with let's say `3 wei` as `msg.value`. Check the balance of the `Force` contract address.
![img_4.png](img_4.png)