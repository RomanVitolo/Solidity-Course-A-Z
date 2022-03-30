pragma solidity >=0.4.4 <=0.8.11;
pragma experimental ABIEncoderV2;

contract hash{

    //Convierte a Bytes todos los parametros que se le pasen
    //Computo del Hash de un String
    function CalculateHash(string memory _chain) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_chain));
    }

    //Convierte a Bytes todos los parametros que se le pasen
    //Computo del Hash de un String, entero y direccion
    function CalculateHash2(string memory _chain, uint _n, address _address) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_chain, _n, _address));
    }

    function CalculateHash3(string memory _chain, uint _n, address _address) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_chain, _n, _address, "Testing", uint(2)));
    }
    
}