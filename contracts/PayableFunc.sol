//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract FirstStep{
    address public owner;
    address payable public investor;

    //Modifiers
    modifier ownerPermission() {
        require(msg.sender==owner, "Only the owner can access"); // like if-else condition 
        _;
    }
    

    function payMoney() payable public{

    }

    constructor() public{
        owner = msg.sender;

    }

    function getBalance() public ownerPermission view returns(uint){
        /*if(msg.sender==owner) {
            return address(this).balance;
        }else{
            revert(); //like break;
        }*/
    
        //require(msg.sender==owner, "Only the owner can access"); (*like if-else condition*) 
        return address(this).balance;    
    }  



    fallback() external payable{
    }



    function sendMoney() external ownerPermission payable{
        //require(msg.sender==owner, "Only the owner can access"); // like if-else condition 
        investor = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        investor.transfer(2 ether);

        address payable investor2 = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
        investor2.transfer(1.5 ether);

    }
}