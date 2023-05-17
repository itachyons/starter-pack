// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @custom:security-contact info@itachyons.io
contract TestTokenWithConstructor is ERC20, Ownable {
    event RoyaltyAddressChanged(address indexed oldAddr, address indexed newAddr);
    address payable private royaltyAddress = payable(address(0));
    constructor(address payable _royaltyAddress) ERC20("TestToken", "TTK") {
        _mint(msg.sender, 50000 * 10 ** decimals());
        royaltyAddress = _royaltyAddress;
    }

    function setRoyaltyAddr(address payable _addr) external onlyOwner{
        require(_addr != address(0), "TestToken: Invalid address");
        address oldAddr = royaltyAddress;
        royaltyAddress = _addr;
        emit RoyaltyAddressChanged(royaltyAddress, _addr);
    }

    function getRoyaltyAddr() public view returns(address){
        return royaltyAddress;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}