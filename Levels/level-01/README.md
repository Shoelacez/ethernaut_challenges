

**OBJECTIVES ARE PRETTY CLEAR**
![img.png](images/img.png)
1. An attacker should be the owner of the smart contract that was not deployed by them
2. Withdraw everything from the smart contract i.e balance = 0.

**THE APPROACH I USED:**

I went for sections of the code where the owner of the smart contract is updates to "message.sender" i.e owner = msg.sender;
1. In the constructor().
Nothing much to be done here, It's all initialization
![img_1.png](images/img_1.png)

2. In the contribute().
3. 
Here we see a condtion:-
The **`msg.sender`** here is the Attacker, He will only become the `owner` when he has some amount of contribution that's not 0 that's greater than that of the `legit owner`.
i.e `contributions[msg.sender] > contributions[owner]` 
![img_2.png](images/img_2.png)

3. In the receive()

The `receive()` is a variant of the `fallback()`.
The `receive()` will be called when the `msg.data` is empty and the `receive()` exists.
In this case it exists in the smart contract and we will leave the msg.data empty and `transact`
![img_3.png](images/img_3.png)

**SOLUTION**

Contribute a value such as `1 wei `to the smart contract that way we can bypass the condition `require(msg.value > 0 && contributions[msg.sender] > 0);`
in the `receive()`. In the low level interactions transact without any `msg.data` but set `msg.value` to anything `>` `0 wei` 


