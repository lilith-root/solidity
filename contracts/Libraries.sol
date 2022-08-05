//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Lib{
    using Math for int;
    function division(int a , int b) public pure returns(int){
        return a.division(b);
    }
}

library Math{
    function division(int a , int b) public pure returns(int){
        require(b!=0,"Cannot divide by 0");
        return a/b;
    }

    
}
