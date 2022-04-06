//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

contract Modifer{

  //Ejemplo de Solo Owner puede ejecutar el contrato
  address public  owner;

  constructor(){
      owner = msg.sender;
  }

    modifier OnlyOwner(){
        require(msg.sender == owner, "You cannot execute the function");
        _;
    }

    function Example() public OnlyOwner(){
        //Logic here
    }

    struct Client{
        string name;
        address direction;
    }

    mapping(string => address) Clients;

    function NewClient(string memory _name) public{
        Clients[_name] = msg.sender;
    }

    //Repasar Esto
    modifier OnlyClients(string memory _name){
        require(Clients[_name] == msg.sender, "You are not a client");
        _;
    }

    function Example_2(string memory _name) public OnlyClients(_name){
        //Logic Here
    }

    //Ejemplo Conducir
    modifier LegalAge(uint _minAge, uint _actualAge){
        require(_actualAge >= _minAge, "You cannot drive");
        _;
    }

    function CanDrive(uint _age) public LegalAge(18, _age){
        //Logic Here
    }

}