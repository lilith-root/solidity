//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Country{
    string public name;
    string public flag;
    string private treasury; //can't acces from outside
    int public year;
    constructor(int _year){
        year= _year;
    }
}

contract Turkey {
    uint public km2;
    string public pMinister;

}

contract KKTC is Country, Turkey{
    uint public sqkm2;
    string public president;
    constructor (int _year) Country(_year*_year) {

    }
}
