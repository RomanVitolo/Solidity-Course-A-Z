//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

//Internal_External_Examples
contract Food{
    
    struct plate{
        string name;
        string ingredients;
        uint time;
    }

    plate[] food_Plates; 
    mapping(string => string) Ingredients;

    function NewFoodPlate(string memory _name, string memory _ingredients, uint _time) internal{
        food_Plates.push(plate(_name, _ingredients, _time));
        Ingredients[_name] = _ingredients;
    }

    function IngredientType(string memory _name) internal view returns(string memory){
        return Ingredients[_name];
    }
}

contract Sandwitch is Food{

    function newSandwitch(string memory _ingredients, uint _time) external{
        NewFoodPlate("Sandwitch", _ingredients, _time);
    }

    function ViewIngredients() external view returns(string memory){
        return IngredientType("Sandwitch");
    }       
}