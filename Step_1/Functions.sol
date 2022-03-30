pragma solidity >=0.4.0 <=0.8.11;
pragma experimental ABIEncoderV2;

contract funtion_examples{

    address[] public directions;

    function newDirections() public{
        directions.push(msg.sender);
    }

    // Computar el hash de los datos proporcionados como parametro
    bytes32 public hash;

    function Hash(string memory _data) public{
        hash = keccak256(abi.encodePacked(_data));
    }

    
    // Declaramos un tipo de dato complejo que es comida
    struct food {
        string name;
        string ingredients;
    }

    // Declaramos un tipo de dato Complejo.. Comida 
    food public burger; 

    function Burgers(string memory _name, string memory _ingredients) public {
       burger = food(_name , _ingredients);
    }

    // Calculamos el Hash del Alumno // Importante: La funcion del hash debe ser privada. El Getter lo obtenemos la variable hash_Id_Alumno
    struct student{
        string name;
        address direction;
        uint age;
    }

    bytes32 public hash_Id_student;
    
    function getHash(string memory _name, address _direction, uint _age) private{
        hash_Id_student = keccak256(abi.encodePacked(_name, _direction, _age));
    }

    // Guardamos con la funcion publica dentro de una lista los alumnos
    student[] public students;
    mapping(string => bytes32) m_students;

    function add_new_Student(string memory _name, address, uint _age) public{
        students.push(student(_name, msg.sender, _age));  // Agrego un estudiante a la Lista
        getHash(_name, msg.sender, _age); // Llamo a la funcion GetHash y le paso los parametros del student
        m_students[_name] = hash_Id_student; //Nos relaciona el nombre de los alumnos con su Hash. Por eso el mapping, ahora si lo estamos usando.
    }

}