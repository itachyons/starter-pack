// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @custom:security-contact info@itachyons.io
contract TestToken is ERC20 {
    constructor() ERC20("TestToken", "TTK") {}
}