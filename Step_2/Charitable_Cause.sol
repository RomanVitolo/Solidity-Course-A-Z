//SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.0 <=0.12.8;
//Repasar
contract CharitableCause{

    struct cause{
        uint id;
        string name;
        uint requiredPrice;
        uint amountCollected;
    }

    uint causeCounter = 0;
    mapping(string => cause) causes;

    function NewCause(string memory _name, uint _requiredPrice) public payable{
        causeCounter++;
        causes[_name] = cause(causeCounter, _name, _requiredPrice, 0);
    }

    function MisionComplete(string memory _name, uint _donate) private view returns(bool){
        bool flag = false;
        cause memory myCause = causes[_name];   
        if(myCause.requiredPrice >= myCause.amountCollected + _donate){
            flag = true;
        }
        return flag;
    }

    function Donate(string memory _name, uint _amount) public returns(bool){
        bool accept_Donations = true;
        if(MisionComplete(_name, _amount)){
            causes[_name].amountCollected = causes[_name].amountCollected + _amount;
        }
        else{
            accept_Donations = false;
        }
        return accept_Donations;
    }

    function CheckCause(string memory _name) public view returns(bool, uint){
        bool limitReached = false;
    cause memory actualCause = causes[_name];
    if(actualCause.amountCollected >= actualCause.requiredPrice){
        limitReached = true;
    }
        return (limitReached, actualCause.amountCollected);
    }
}