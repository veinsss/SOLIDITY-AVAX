# Basic Smart Contract Error Handling

## Three functions that handles error in Solidity. 

### Functions
1. setNumber
    * uses the require()
    * checks if the amount in the wallet is positive 
2. reduceNumber
    * uses the assert()
    * Check if the math is correct
    * Input validation
3. resetNumber
    * users revert()
    * Checks the ownership of the content of the wallet


# Testing Steps

* Call setNumber with 0 (will fail)
* Call setNumber with a positive number (will work)
* Call resetNumber from non-owner address (will fail)
