// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Importing standard ERC20 from OpenZeppelin for token functionality
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Constructor to initialize token name, symbol, and mint initial supply
contract MyToken is ERC20 {
    constructor() ERC20("TestToken", "TTK") {            // Renamed token for clarity in testing environments
        _mint(msg.sender, 500000 * 10 ** decimals());
    }

// Function to burn tokens from sender's balance
function burn(uint256 amount) public {
    _burn(msg.sender, amount);
}
}
