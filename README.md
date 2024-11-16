# School Cafeteria Smart Contract

A school cafeteria management system built using solidity by using tokens as a currency. The contract displays the different applications if error handling in Solidy 

## Three functions that handles error in Solidity. 

### Variables
1. cafeteriaManager
   * Uses the address of the person who deployed the contract
2. lunchPrice
   * Initial price set of the lunch default price is 5
3. totalMealsToday
   * gets the summation of the total meals that has been sold
4. balance
   * A map that tracks the students balance

### Functions
1. addBalance
    * Allows students to add tokens to their balance
    * Requires amount to be greater than 0
2. getLunch
    * Deducts lunch price from student's balance
    * Checks if student has sufficient balance
    * Increments total meals counter
3. changeLunchPrice
    * Updates the lunch price
    * Checks the ownership of the content of the wallet
    * Updates the lunch price

