// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract DeBias is ERC20{
    address public admin;
    constructor() ERC20('DeBias', 'DBS') {
      _mint(msg.sender, 100000000000000);
      admin = msg.sender;
    }

    function mint(address to, uint amount) external {
      require(admin == msg.sender, "only admin");
      _mint(to, amount);
    }

    function burn(uint amount) external {
      _burn(msg.sender, amount);
    }

}
