//Solidity is tghe fairly new programming language used for etherium blockchain. It is the combination of few languages. Creator of solidity got inspired by java, javascript c++ rust and many other languages therefor not only making slidity versatile also make it intrusive it is written in pure english

// SPDX-License-Identifier: UNLICENSED

//first by choosing the version of solidity we use
pragma solidity ^0.8.0;

// import "hardhat/console.sol";

// this contract is serving the purpose of class in object oriented programming language
contract Transactions {
    // In solidity we need to specify a data type instead of let, var ,const
    uint256 transactionCount;

// event transfer() like a function that can emit or call later on
// here address is a type and from is a variable name
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);
  
  // this is similar to an object, and we specifying what properties is this have and what type type it will be
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

// here we define a array of different transaction because we want to store all of them

//transaction variable is an array of transferstruct meaning is an array of object
    TransferStruct[] transactions;

//here define public is important meaning everybody Can access this function
//string memory message here message mean some specific data store in memory of specific transaction if we dont use memory then it must be there
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        // msg.sender is already in object called msg . this is immediately get when we call specific function in blockchain
        // block.timestamp has been executed on blockchain
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        // By making a transfer to another account we need to emit
        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }


// here return define what this function will return here transferstruct and some data in memory will return
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }


// this function return number
    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}