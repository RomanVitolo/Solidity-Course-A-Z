pragma solidity >=0.4.0 <=0.8.11;
pragma experimental ABIEncoderV2;

contract mapping_example{

    mapping (address => uint)  selectNumber;

    function select_Number(uint _k) public{
        selectNumber[msg.sender] = _k;
   }

    function CheckNumber() public view returns(uint){
        return selectNumber[msg.sender];
   }

    //Declaramos un mapping que relaciona el nombre de una persona, con su cantidad de dinero.

    mapping(string => uint) amountOfMoney;
    
    function person(string memory _name, uint money) public{
        amountOfMoney[_name] = money;
    }

    function person_Money(string memory _name) public view returns(uint){
    return amountOfMoney[_name];
    }

    // Ejemplo de mapping con un tipo de dato completo
    struct Person{
        string name;
        uint age;
    }

    mapping(uint => Person) people;

    function DniPerson(uint dni_number, string memory _name, uint _age) public{
        people[dni_number] = Person(_name, _age);
    } 

    function ViewPerson(uint _dni) public view returns(Person memory){
        return people[_dni];
    }

   
  
    //uint age = 28;
    mapping(string => uint) public name_age;

   function name_Age(uint age) public{
       name_age["Roman"] = age; 
    }
    
}