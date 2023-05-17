// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @custom:security-contact info@itachyons.io
contract TestTokenMintable is ERC20, Ownable {
    constructor() ERC20("TestToken", "TTK") {
        _mint(msg.sender, 50000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}