//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

contract Bank{
    
    struct client{
        string name;
        address direction;
        uint money;
    }

    mapping(string => client) Clients;

    function NewClient(string memory _name) internal{
        Clients[_name] = client(_name, msg.sender, 0);
    }
}

contract Client is Bank{
        
    function RegisterClient(string memory _name) public{
            NewClient(_name);
        }

    function DepositMoney(string memory _name, uint _amount) public{
        Clients[_name].money = Clients[_name].money + _amount;
    }

    function WithdrawMoney(string memory _name, uint _amount) public returns(bool){
        bool flag;
        if(int(Clients[_name].money) - int(_amount) >= 0){
            flag = true;
            Clients[_name].money = Clients[_name].money - _amount;
        }
        else{
            flag = false;
        }
        return flag;
    }

    function ViewActualMoney(string memory _name) public view returns(uint){
        return Clients[_name].money;
    }
    }
