// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract errorHandling
{
    uint public number = 100;
    address public owner;

    constructor()
    {
        owner = msg.sender;
    }

    function setNumber(uint _newNumber) public
    {
        require(_newNumber > 0, "Number must be Positive");
        number = _newNumber;
    }

    function reduceNumber(uint _amount) public
    {
        assert(_amount <= number);
        number -= _amount;
    }

    function resetNumber() public
    {
        if(msg.sender != owner)
        {
            revert("Only ownwer can reset");
        }
        number = 100;

    }

}
