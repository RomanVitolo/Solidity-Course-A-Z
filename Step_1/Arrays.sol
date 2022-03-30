pragma solidity >=0.4.0 <=0.8.11;

contract Arrays{

    // Array de longitud fija
    // No soportan la funcion push()
    
    uint[4] public ids =[0,1,28];    
    uint32[7] array_int_32_bits;


    // Array dinamico
    string[] names;
    string[] last_names = ["Roman", "Ricardo", "Valeria"];
    uint[] public ages;
   
    

     //Le damos al usuario la opcion de modificar el Array
    function array_modify(uint _age) public {
        ages.push(_age);
    }

    struct Person{
        string _name;
        uint age;
    }     

    //Aray dinamico de tipo Persona
    Person[] public dinamyc_person; 
    
    function modify_person_array(string memory name, uint age) public{
        dinamyc_person.push(Person(name, age));    
    }
   
    //ids[3] = 32; Esta linea sirve para mostrar como agregar un valor a una posicion(Podemos sobrescribir o agregar un valor en una celda no ocupada). 
    //En un Array de longitud fija, donde Push() no es valido

    // Acceder a la posicion de un Array
    uint public testArray = ids[2];  
}