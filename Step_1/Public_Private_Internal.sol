pragma solidity >=0.4.0 <=0.8.11;
pragma experimental ABIEncoderV2;

contract public_private_internal{
 
    //Modificador publico
    uint public my_integrer = 45;
    string public my_string = "Roman";
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    //Modificador Privado
    uint private my_private_integrer = 5;
    string private my_private_string = "Alberto";
    bool private flag = true; 

    function test(uint _k) public{
        my_private_integrer = _k;
    }    

    // Modificador internal
    bytes32 internal hash = keccak256(abi.encodePacked("Test"));
    address internal my_direction = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;    
}