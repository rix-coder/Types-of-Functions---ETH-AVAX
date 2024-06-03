      // SPDX-License-Identifier: MIT
      pragma solidity ^0.8.13;
      
      import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
      
      
      contract MyToken is ERC20 {
          uint256 private initialSupply;
          constructor(string memory name, string memory symbol, uint256 _initialSupply) ERC20(name, symbol) {
               initialSupply = _initialSupply;
              _mint(msg.sender, _initialSupply);
          }
      
          function mintToken(address to, uint256 amount) public {
              _mint(to, amount);
              initialSupply += amount;
          }
      
          function burnToken(address from, uint256 amount) public {
             _burn(from, amount);
              initialSupply -= amount;
          }
      
          function transferToken(address from, address to, uint256 amount) public {
              _transfer(from, to, amount);
              initialSupply -= amount;
          }
      }
