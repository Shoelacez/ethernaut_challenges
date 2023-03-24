**SHOP: LEVEL 21**
![](images/img.png)

**TASK REQUIREMENTS**
![img.png](img.png)

**APPROACH**
We will try using an attack contract called `Hack`

Function state modifiers
pure and view are built-in state modifiers. They “promise” how functions will interact with data on the Ethereum blockchain state.

pure: functions that will neither read from nor modify the state.
view: functions that will only read, but not modify the state.
default: functions that will read and modify the blockchain state.
Note2: a pure function can break its promise and modify the blockchain state, without any warning. (compiler version is important)