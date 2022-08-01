// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./ERC20/ERC20.sol";

contract ClassicERC20 is ERC20 {

    constructor() ERC20("Nekr Classic", "NEKR-C")
        {
            _mint(msg.sender, 10 * 10 ** 18);
        }
}
