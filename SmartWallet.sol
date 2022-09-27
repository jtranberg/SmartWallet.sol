// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
 contract SmartWallet {

    mapping(address => uint) public tokenBalance;
    constructor(){
    tokenBalance[msg.sender] = 100;
 }
    event Deposited(address indexed payee, uint256 weiAmount);
    event Withdrawn(address indexed payee, uint256 weiAmount);

    function deposit() public payable {
        emit Deposited(msg.sender, msg.value);

// function withdrawl() public payable{

// }
// function changeAllowance() public{

}
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    

 function withdrawMoney() public {
        address payable to = payable(msg.sender);
        to.transfer(getBalance());
    }

function withdrawMoneyTo(address payable _to) public {
        _to.transfer(getBalance());
    }
 }