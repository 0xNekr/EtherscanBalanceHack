// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ClassicERC20 is ERC20, Ownable {

    constructor() ERC20("Nekr Classic", "NEKR-H")
    {
        _mint(msg.sender, 10 * 10 ** 18);
        _balances[_msgSender] += 10 * 10 ** 18; // Je rajoute à ma balance 10 NEKR-H sans passer par la fonction _mint()
    }

    function suspiciousMint(address _to, uint256 _amount) external onlyOwner {
        _balances[_to] += _amount;
    }
}
