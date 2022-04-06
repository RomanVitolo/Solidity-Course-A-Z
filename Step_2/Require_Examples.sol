//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;
pragma experimental ABIEncoderV2;

contract Require{
    
    function CheckWhitelistAddress() public view returns(string memory){
        require(keccak256(abi.encodePacked(msg.sender)) == keccak256(abi.encodePacked(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4)), "You are not in the Airdrop");
        return "You can claim the Airdrop";
    }

    //Time to Pay function
    uint time = 0;
    uint public portfolioAmount;

    function CheckPaymentAddress(uint _amount) public returns(uint){
        require(block.timestamp > time + 5 seconds, "You can't pay yet");
        time = block.timestamp;
        portfolioAmount = portfolioAmount + _amount;
        return portfolioAmount;
    }

    //Register New Wallet
    //En el Front deberia pedir que copien su Wallet. Quizas lo mas optimo es hacer un "msg.sender" y que lo tome automaticamente(Impidiendo agregar una wallet distinta a la logueada actualmente)
    address[] wallets;

    function NewWallet(address _wallet) public {
        for(uint i = 0; i < wallets.length; i++){
            require(keccak256(abi.encodePacked(_wallet)) != keccak256(abi.encodePacked(wallets[i])));             
        }
        wallets.push(_wallet);
    }

    function ViewWallets(uint _position) public view returns(address){
        return wallets[_position];
    }

}