// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/*
       REQUIREMENTS
    1. You will submit your project on GitHub, so you will need an account and know how to share a public repository
    2. You will include a README.md file in your project's GitHub repository (root folder). The README should provide a concise and clear overview of your project's purpose and functionality. This will help other developers understand the motivation behind your project and how to use it.
        To assist you in creating your README, we have provided a starter template you can use.
        This is an example of a README. Note that yours does not need to be this detailed. This is simply a reference.
    3. You will record a video of 5 mins or less reviewing the three contracts you choose - Loom is a great tool to use if needed.
    In the video, you will do a code walk-through where you share your screen and explain the code. 
        In the video, explain the code and what it is doing.
        Note: we will accept just audio with a screenshare, but, we highly recommend doing the video and screenshare since it will better prepare you for job interviews.
    4. For some assessments/projects, you will need to share a transaction ID. (This project is NOT one of them so just type any number in the transaction ID box.)
*/

contract ErrorHandling {

    // State variable to store a number
    uint public num;

    // Constructor function to initialize the contract
    constructor() {}

    // Function using require to validate input conditions.
    function useRequire(uint _i) public pure {
        require(_i > 10, "Input must be greater than 10");
    }

    // Function using revert to handle complex conditions.
    function useRevert(uint _i) public pure {
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    // Function using assert to test for internal errors.
    function useAssert() public view {
        assert(num == 0);
    }

    // Temporary function to change the value of num for demonstration purposes.
    function setNum(uint _num) public {
        num = _num;
    }
}

