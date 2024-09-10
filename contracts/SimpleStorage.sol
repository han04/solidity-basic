// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleStorage{
    uint256 public thisNum ;

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
} 