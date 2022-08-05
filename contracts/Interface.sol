//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface Int{
    //cannot have variables
    //cannot inherit
    //can be inherited
    //the contract should have functions built here.

    function record(string memory name ) external;
}

contract A is Int{
    string[] public clients;
    function record(string memory name) override public{
        clients.push(name);

    }
}

contract B is Int{
    mapping(string=>bool) public students;
    function record(string memory name ) override public{
        students[name]= true;
    }
}
