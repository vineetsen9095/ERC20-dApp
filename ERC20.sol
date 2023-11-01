// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyERC20Token is ERC20, Ownable {
    constructor(address initialOwner) ERC20("My20Token", "M2K") Ownable(initialOwner) {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(address From,uint256 amount) public onlyOwner {
        _burn(From, amount);
    }
}

//https://sepolia.etherscan.io/address/0x5a7d84dd53fe13ae5ae0a3279752de00f318bfe1