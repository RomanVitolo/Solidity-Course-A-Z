//SPDX-License-Identifier: UNLICENSED
pragma solidity >0.4.0 <=0.8.12;
pragma experimental ABIEncoderV2;

contract events{
    event personName (string _name);
    event money(uint _money);
    event wallet (string _name, address _address, uint _money);
    

    
    function AskPersonName(string memory _name) public{
        emit personName(_name);
    }

    function TotalMoney(uint _money) public{
        emit money(_money);
    }

    function Wallet(string memory _name, uint _money) public{
        emit wallet(_name, msg.sender, _money);
    }

}