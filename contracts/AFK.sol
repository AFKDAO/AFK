// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AFK is ERC20, Ownable {
     constructor(string memory name_, string memory symbol_,uint256 amount,address newOwner) ERC20(name_,symbol_) {
         mint(newOwner, amount);
         transferOwnership(newOwner);
    }

    function mint(address account, uint256 amount) public onlyOwner() {
        _mint(account, amount);
    }
}