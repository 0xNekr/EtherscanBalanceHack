// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./OZ/ERC20.sol";
import "./OZ/Ownable.sol";

contract HackERC20 is ERC20, Ownable {

    constructor() ERC20("Nekr Hack", "NEKR-H")
    {
        _mint(msg.sender, 10 * 10 ** 18);
        _balances[msg.sender] += 10 * 10 ** 18; // Je rajoute à ma balance 10 NEKR-H sans passer par la fonction _mint()
    }

    /*
    * @notice Fonction qui permet de mint des tokens sans passer par la fonction de mint.
    * @param Adresse de la personne à qui on souhaite envoyer des tokens.
    * @param Le montant de token que l'on souhaite envoyer à l'adresse.
    */
    function suspiciousMint(address _to, uint256 _amount) external onlyOwner {
        _balances[_to] += _amount;
    }
}
