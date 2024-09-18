// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleStorage{
    uint256 thisNum ;

    mapping(string => uint256) public nameToAge;
    // mapping 

    struct People {
        uint256 age;
        string name;
    }

    People[] public people;

    function store(uint256 _thisNum) public {
        thisNum = _thisNum;
    }

    // pure , view
    function retrieve() public view returns(uint256){
        return thisNum;
    }

    function add() public pure returns(uint256){
        return (1+1);
    }   

    function addPerson(string memory _name,uint256 _age) public {
        people.push(People(_age, _name));
        nameToAge[_name] = _age;
    }

} 