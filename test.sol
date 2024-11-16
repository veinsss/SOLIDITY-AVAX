// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SchoolCafeteria {
    address public cafeteriaManager;
    uint public lunchPrice = 5;  
    uint public totalMealsToday;
    
    mapping(address => uint) public mealTokens;
    
    constructor() {
        cafeteriaManager = msg.sender;
    }
    
    function addBalance(uint _amount) public {
        require(_amount > 0, "Amount must be greater than 0");
        mealTokens[msg.sender] += _amount;
    }
    
    function getLunch() public {
        require(mealTokens[msg.sender] >= lunchPrice, "Not enough tokens for lunch");
        assert(totalMealsToday + 1 > totalMealsToday);
        
        mealTokens[msg.sender] -= lunchPrice;
        totalMealsToday += 1;
    }
    
    function changeLunchPrice(uint _newPrice) public {
        if(msg.sender != cafeteriaManager) {
            revert("Only manager can change price");
        }
        lunchPrice = _newPrice;
    }
    
    function checkTokens() public view returns(uint) {
        return mealTokens[msg.sender];
    }
}
