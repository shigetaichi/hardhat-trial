// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    string public constant CoinName = "Sample token";
    string public constant Symbol = "SAMT";
    uint256 constant _initial_supply = 1000000;

    constructor() ERC20(CoinName, Symbol) {
        _mint(msg.sender, _initial_supply);
    }
}
