{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 pragma solidity ^0.5.0;\
\
// lvl 2: tiered split\
contract TieredProfitSplitter \{\
    address payable employee_one; // ceo\
    address payable employee_two; // cto\
    address payable employee_three; // bob\
\
    constructor(address payable _one, address payable _two, address payable _three) public \{\
        employee_one = _one;\
        employee_two = _two;\
        employee_three = _three;\
    \}\
\
    // Should always return 0! Use this to test your `deposit` function's logic\
    function balance() public view returns(uint) \{\
        return address(this).balance;\
    \}\
\
    function deposit() public payable \{\
        uint points = msg.value / 100; // Calculates rudimentary percentage by dividing msg.value into 100 units\
        uint total;\
        uint amount;\
\
        // @TODO: Calculate and transfer the distribution percentage\
        // Step 1: Set amount to equal `points` * the number of percentage points for this employee\
        amount = points * 60;\
        // Step 2: Add the `amount` to `total` to keep a running total\
        total += amount;\
        // Step 3: Transfer the `amount` to the employee\
        employee_one.transfer(amount);\
\
        // @TODO: Repeat the previous steps for `employee_two` \
        amount = points * 25;\
        total += amount;\
        employee_two.transfer(amount);\
        \
        // Your code here! and `employee_three`\
        amount = points * 15;\
        total += amount;\
        employee_three.transfer(amount);\
        \
\
        employee_one.transfer(msg.value - total); // ceo gets the remaining wei\
    \}\
\
    function() external payable \{\
        deposit();\
    \}\
\}\
}