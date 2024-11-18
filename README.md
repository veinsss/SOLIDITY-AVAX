# School Cafeteria Smart Contract

A school cafeteria management system built using solidity by using tokens as a currency. The contract displays the different applications if error handling in Solidy 

## Three functions that handles error in Solidity. 

### Variables
1. cafeteriaManager
   * Uses the address of the person who deployed the contract
2. lunchPrice
   * Initial price set of the lunch default price is 5
3. lunchAvailability
   * a bool variable which is initially set to false this controls the purchase of lunch
4. studentTokens
   * This is the wallet of the students callign the add balance increments this value with whatever value
3. totalMealsToday
   * gets the summation of the total meals that has been sold


### Functions
1. addBalance
    * Allows students to add tokens to their balance
    * Requires amount to be greater than 0
2. getLunch
    * An if statement checks first if lunch is avaiable if not it is going to throw a statement
    * Deducts lunch price from student's balance
    * Checks if student has sufficient balance
    * Increments total meals counter
4. changeLunchPrice
    * Updates the lunch price
    * Checks the ownership of the content of the wallet
    * Updates the lunch price

