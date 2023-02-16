**LEVEL-04: token**
![img.png](images/img.png)

**TASK AT HAND**
![img_1.png](images/img_1.png)

**THE APPROACH I USED:**

We will be the Attackers i.e the `attacker contract`, So the `victim contract` is the instance that will be provided to us by `ethernaut`.

i.e For my case: 

![img_3.png](images/img_3.png)

**ALL WE NEED TO DO IS CREATE AN ATTACKER CONTRACT**

This `Attacker` contract will call the `Token` contract, Within the token contract will call the `transfer()` function
then we will send ourselves something like `10 tokens`.

![img_4.png](images/img_4.png)

**WHY CAN'T WE CALL IT DIRECTLY?**

The `transfer()` function in the `Token` contract has some conditions that are limiting that particular approach

![img_5.png](images/img_5.png)

**FINALLY SUBMIT THE INSTANCE**

![img_6.png](images/img_6.png)