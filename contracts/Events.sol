//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Events{
        struct Patient{
            string name;
            bool insurance;
            int age;
        }

        Patient public newPatient;
        event patientRegistered(string name, bool insurance,int age) ;

        function registerPatient(string memory _name, bool _insurance,int _age) public{
            newPatient.name= _name;
            newPatient.insurance= _insurance;
            newPatient.age= _age;
            emit patientRegistered(_name,_insurance,_age);

        }
}

