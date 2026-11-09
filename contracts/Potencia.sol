// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Potencia is ERC20, Ownable {
    // Suministro máximo fijo: 21 millones de tokens con 18 decimales
    uint256 public constant MAX_SUPPLY = 18_000_000 * 10**18;

    constructor() 
        ERC20("Potencia", "PTCA") 
        Ownable(msg.sender) 
    {
        // Se acuña el total del suministro directamente a tu billetera al desplegar
        _mint(msg.sender, MAX_SUPPLY);
    }
}
