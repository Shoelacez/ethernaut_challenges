**LEVEL 07: FORCE**
![img.png](images/img.png)

**TASK AT HAND**
![img_1.png](images/img_1.png)

**CHECKING THE BALANCE OF THE FORCE CONTRACT**

![img_5.png](images/img_5.png)

If we manage to get the balance just above 0 then we just passed this challenge.

**FROM THE "THINGS THAT MIGHT HELP"**,

They suggested that the best way to beat this challenge is;

![img_2.png](images/img_2.png)

THE APPROACH I USED;

I went with the option to attack the smart contract and tried some low level calls but that was not possible because interactions with the `Force contract` at a low level required that the `fallback()` and `receive()` were declared in the contract.

![img_1.png](img_1.png)

AFTER CALLING THE ATTACKER CONTRACT;

Then check the balance of the instance:
We called the `Attacker` contract by passing `10 wei` as `msg.value`s value.

![img_2.png](img_2.png)