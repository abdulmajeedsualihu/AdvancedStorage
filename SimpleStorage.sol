// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleStorage {
    uint256 private favoriteNumber; // Stores the user's favorite number
    uint256[] public favoriteNumbers; // Dynamic array to store multiple favorite numbers
    // Struct to store a person’s name and their favorite number
    struct Person {
        string name;            // Person's name
        uint256 favoriteNumber; // Their favorite number
    }

    Person[] public people; // Array of Person structs to store multiple people's data

    // Enum to manage contract states (Active or Inactive)
    enum ContractState { 
        Active,   // State representing an active contract
        Inactive  // State representing an inactive contract

}

ContractState public state; // State variable to store the current contract state

    function storeNumber(uint256 _number) public {
        favoriteNumber = _number;
    }

    function getFavoriteNumber() public view returns (uint256) {
       return favoriteNumber;
    }
    
    function isGreaterThan(uint256 _value) public view returns (bool){
        return favoriteNumber > _value;
    }

    function sumToFavoriteNumber() public view returns (uint256) {
     uint256 sum = 0;
     for (uint256 i = 1; i <= favoriteNumber; i++) {
         sum += i;
     }
     return sum;
}
    //Internal Function
    function internalFuction() internal pure returns (string memory){
        return "You're awesome";
    }
    //Wrapper function to expose internalFunction
    function callInternalFunction() public pure returns (string memory){
        return internalFuction();
    }

    //External function
    function externalFunction() external pure returns (string memory){
        return "Hope you are having a great time";
    }
    //Wrapper function to expose externalFunction
    function testExternalFunction() public view returns (string memory){
        return this.externalFunction();
    }
}