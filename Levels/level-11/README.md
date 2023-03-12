**LEVEL 11: ELEVATOR**

![img.png](images/img.png)

**TASK REQUIREMENTS**
The goal of this challenge is to be able to reach the top floor of the building.

![img.png](images/img_1.png)

**THE APPROACH I USED**

We will need an `Attacker contract`. we have the `goTo()` that takes a `uint256 _floor`. This function is expected to be called by a smart contract that implements the `Building` interface. 

![](images/img_4.png)

Here the contract uses the `Elevator` contract to call the `goTo()` which will be used to cheek if we are at the top.

