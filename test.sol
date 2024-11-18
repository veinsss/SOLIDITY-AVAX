// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SchoolCafeteria {
    
    address public cafeteriaManager;
    
    bool public lunchAvailability = false;  
    uint public studentTokens; 
    uint public lunchPrice = 5;  
    uint public totalMealsToday;
    
    
    constructor() {
        cafeteriaManager = msg.sender;
    }
    
    function addBalance(uint _amount) public {
        require(_amount > 0, "Amount must be greater than 0");
        studentTokens += _amount;
    }
    
 

    function getLunch() public {

        if (lunchAvailability == true)
        {
            require(studentTokens >= lunchPrice, "Not enough tokens for lunch");
            assert(totalMealsToday + 1 > totalMealsToday);
            studentTokens -= lunchPrice;
            totalMealsToday += 1;
        
        }
        else
        {
            revert("It is not lunch time yet");
        }
    }
    
    function isLunchAvailable() public {
        lunchAvailability = !lunchAvailability; 
    }


    function changeLunchPrice(uint _newPrice) public {
        if(msg.sender != cafeteriaManager) {
            revert("Only manager can change price");
        }
        lunchPrice = _newPrice;
    }
    

}
