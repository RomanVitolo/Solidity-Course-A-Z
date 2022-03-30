pragma solidity >0.4.0 <=0.8.12;


contract returns_examples{

    //Funcion que nos devuelve un saludo
    function Regards() public pure returns(string memory){
        return "HI";
    }

    //Esta funcion calcula el resultado de una multiplicacion de dos numeros enteros
   
    function Result(uint _a, uint _b) public pure returns(uint){
        return (_a * _b);
    }

    //Esta funcion devuele true si el numero es par y false en caso contrario  
    function Get_Result(uint _number) public pure returns(bool){
        bool flag;
        if (_number % 2 == 0){
            flag = true;
        }
        else {
            flag = false;
        }
        return flag;
    }

    //Realizamos una funcion que nos devuelve el cociente y el residuo de una division
    //Ademas de una variable booleana que es true si el residuo es 0 y false en caso contrario
    function Division(uint _a, uint _b) public pure returns(uint, uint, bool){
        uint q = _a / _b;
        uint r = _a % _b;
        bool multiplo;
        if(r == 0){
            multiplo = true;
        }
        return (q, r, multiplo);
    }

    //Practica para el manejo de los valores devueltos

    function Numbers() public pure returns(uint, uint, uint, uint, uint, uint){
        return (1,2,3,4,5,6);
    }

    function All_Values() pure public{
        //Declaramos las variables donde se guardan los valores de retorno de la funcion numeros
        uint a;
        uint b;
        uint c;
        uint d;
        uint e;
        uint f;
        // Realizar la asignacion simple
        (a,b,c,d,e,f) = Numbers();
    }

    function Last_Value() pure public{
        (,,,,, uint number) = Numbers();
        number = 6;
    }


}