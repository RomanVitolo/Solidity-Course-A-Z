//SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.0 <=0.7.0;
pragma experimental ABIEncoderV2;

contract View_Pure_Playable{

    //View Example
    string[] students;

    function new_Student(string memory _add_Student) public {
        students.push(_add_Student);
    }

    function see_Student(uint _position) public view returns(string memory _name){
        return students[_position];
    }

    // Pure Example
    function CalculateExp(uint _a, uint _b) public pure returns(uint){
        return _a * _b;
    }

    // Payable Example   Pagar con Ether
    mapping(address => wallet)  moneyWallet;

    struct wallet{
        string user;
        address userAddress;
        uint amountOfMoney;
    }

    function Pay(string memory _user, address, uint _money) public payable{
        wallet memory myWallet;
        myWallet = wallet(_user, msg.sender, _money);
        moneyWallet[msg.sender] = myWallet;
    }   

    function ViewBalance() public view returns(wallet memory){
        return moneyWallet[msg.sender];
    }
}