# Solidity Error Handling Demonstration

## Overview

This project demonstrates the use of three essential error handling mechanisms in Solidity: `require`, `revert`, and `assert`. These statements are crucial for ensuring the integrity and security of smart contracts by validating inputs, handling complex conditions, and enforcing internal invariants.

## Description

The smart contract `ErrorHandling.sol` includes three main functions to demonstrate each error handling mechanism:
1. **`useRequire(uint _i)`**: Uses the `require` statement to validate input conditions.
2. **`useRevert(uint _i)`**: Uses the `revert` statement to handle complex conditions.
3. **`useAssert()`**: Uses the `assert` statement to enforce internal invariants.
4. **`setNum(uint _num)`**: Temporary function to change the value of `num` for demonstration purposes.

This contract serves as a practical example for those new to Solidity and blockchain development.

## Getting Started

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. Follow the steps below to compile and deploy the contract:

1. Go to the Remix website at [https://remix.ethereum.org/](https://remix.ethereum.org/).

2. Create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a `.sol` extension (e.g., `ErrorHandling.sol`). Copy and paste the following code into the file:

    ```solidity
    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.13;

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
    ```

3. Compile the code by clicking on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.13" (or another compatible version), and then click on the "Compile ErrorHandling.sol" button.

4. Deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandling" contract from the dropdown menu, and then click on the "Deploy" button.

5. Once the contract is deployed, you can interact with it by calling the `useRequire`, `useRevert`, and `useAssert` functions. You can also use the `setNum` function to change the value of `num` for demonstrating the `useAssert` function.

### Demonstration of Functions

#### `useRequire` Function

**Purpose**: Uses `require()` to validate that the input `_i` is greater than 10.

**Steps**:
- **Success Scenario**:
  - Call `useRequire` with a value greater than 10: `useRequire(15)`.
  - **Expected Result**: The transaction succeeds.
- **Failure Scenario**:
  - Call `useRequire` with a value less than or equal to 10: `useRequire(5)`.
  - **Expected Result**: The transaction reverts with the message "Input must be greater than 10".

#### `useRevert` Function

**Purpose**: Uses `revert()` to handle the condition where `_i` is less than or equal to 10.

**Steps**:
- **Success Scenario**:
  - Call `useRevert` with a value greater than 10: `useRevert(15)`.
  - **Expected Result**: The transaction succeeds.
- **Failure Scenario**:
  - Call `useRevert` with a value less than or equal to 10: `useRevert(5)`.
  - **Expected Result**: The transaction reverts with the message "Input must be greater than 10".

#### `useAssert` Function

**Purpose**: Uses `assert()` to ensure that the state variable `num` is always 0.

**Steps**:
- **Initial State**:
  - Call `useAssert` to check the initial state of `num`: `useAssert()`.
  - **Expected Result**: The transaction succeeds because `num` is 0.
- **Changing `num`**:
  - Call `setNum` to change `num` to 10: `setNum(10)`.
  - **Expected Result**: The transaction succeeds, and `num` is set to 10.
- **Failure Scenario**:
  - Call `useAssert` to check the value of `num`: `useAssert()`.
  - **Expected Result**: The transaction reverts because `num` is not 0.

## Help

For any issues or common problems, consider checking the official Solidity documentation or reaching out to the community on forums like Ethereum Stack Exchange.

```sh
solidity documentation: https://docs.soliditylang.org/en/v0.8.13/
ethereum stack exchange: https://ethereum.stackexchange.com/
