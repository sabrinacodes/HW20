{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 pragma solidity ^0.5.0;\
\
// lvl 1: equal split\
contract AssociateProfitSplitter \{\
    // Create three payable addresses representing `employee_one`, `employee_two` and `employee_three`.\
    address payable employee_one;\
    address payable employee_two;\
    address payable employee_three;\
\
    constructor(address payable _one, address payable _two, address payable _three) public \{\
        employee_one = _one;\
        employee_two = _two;\
        employee_three = _three;\
    \}\
\
    function balance() public view returns(uint) \{\
        return address(this).balance;\
    \}\
\
    function deposit() public payable \{\
        // Split `msg.value` into three\
        uint amount = msg.value/3; // Your code here!\
\
        // @TODO: Transfer the amount to each employee\
        employee_one.transfer(amount);\
        employee_two.transfer(amount);\
        employee_three.transfer(amount);\
\
        // take care of a potential remainder by sending back to HR (`msg.sender`)\
        msg.sender.transfer(msg.value-amount*3);\
    \}\
\
    function() external payable \{\
        // Enforce that the `deposit` function is called in the fallback function!\
        \
        deposit();\
    \}\
\}\
}