# Solidity Contracts

## Associate Profit Splitter
This will accept Ether into the contract and divide the Ether evenly among the associate level employees. This will allow the Human Resources department to pay employees quickly and efficiently.
### Test the contract

In the Deploy tab in Remix, deploy the contract to your local Ganache chain by connecting to Injected Web3 and ensuring MetaMask is pointed to localhost:8545.
You will need to fill in the constructor parameters with your designated employee addresses.
Test the deposit function by sending various values. Keep an eye on the employee balances as you send different amounts of Ether to the contract and ensure the logic is executing properly.

![image](https://user-images.githubusercontent.com/20588107/110081224-d899af80-7d48-11eb-8a8c-7d09e3c8dbfa.png)
![image](https://user-images.githubusercontent.com/20588107/110081280-eea77000-7d48-11eb-8206-13360f7feb6d.png)


## Tiered Profit Splitter
In this contract, rather than splitting the profits between Associate-level employees, you will calculate rudimentary percentages for different tiers of employees (CEO, CTO, and Bob).
### Test the contract
Deploy and test the contract functionality by depositing various Ether values (greater than 100 wei).
The provided balance function can be used as a test to see if the logic you have in the deposit function is valid. Since all of the Ether should be transferred to employees, this function should always return 0, since the contract should never store Ether itself.
Note: The 100 wei threshold is due to the way we calculate the points. If we send less than 100 wei, for example, 80 wei, points would equal 0 because 80 / 100 equals 0 because the remainder is discarded. We will learn more advanced arbitrary precision division later in the course. In this case, we can disregard the threshold as 100 wei is a significantly smaller value than the Ether or Gwei units that are far more commonly used in the real world (most people aren't sending less than a penny's worth of Ether).

![image](https://user-images.githubusercontent.com/20588107/110081322-0121a980-7d49-11eb-9bc9-abafb4bdc77e.png)
![image](https://user-images.githubusercontent.com/20588107/110081342-07178a80-7d49-11eb-8846-601a81a29978.png)






