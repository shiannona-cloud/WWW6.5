// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SaveMyName{

    string name;
    string bios;

    function add(string memory _name, string memory _bios) public {
        name = _name;
        bios = _bios;
    }

    function retrieve() public view returns (string memory, string memory)
    {
        return(name,bios);
    } 

//不建议这么写
    function AddAndRetrieve(string memory _name, string memory _bios) public returns(string memory, string memory) {
        name = _name;
        bios = _bios;
        return(name,bios);//它会执行，但是在用户界面没显示，执行了就消耗gas，所以不要这么写
    }
}
