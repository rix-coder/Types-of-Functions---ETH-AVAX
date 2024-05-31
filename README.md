# Types-of-Functions---ETH-AVAX

## Types of Functions
### Project: Create and Mint Token
For this project, you will write a smart contract to create your own ERC20 token and deploy it using HardHat or Remix.

# Description

This program is a smart contract MyToken, a programming language used for developing this progran is Solidity and I also import an ERC20 token. The contract has the following functions :

(1) Constructor() ERC20() 

(2) Contract successfully uses mintToke() statement.

(3) Contract successfully uses burnToken() statement.

(4) Contract successfully uses transferToken() statement.

## Getting Started
### Functionalities
-  Constructor() ERC20(): Initialize to input a token name, token symbol and initial supply.
- function mintToke(): Initialize to mint a token. It needed a account address and amount value that you want to mint.
- function burnToken(): Initialize to burn a token. It needed a account address and amount value that you want to burn.
- function transferToke(): It allow to transfer a token to another account. It will input account address of sender and reciever, and also the amount of token that will transfer.

## Executing program
- To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
- Open a Solidity file in the repository and copy the code and paste it to the IDE you use.
-Add sol suffixes in your file name if you try to run it to the IDE so it read as a SOLIDITY FILE
      // SPDX-License-Identifier: MIT
      pragma solidity ^0.8.13;
      
      import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
      
      
      contract MyToken is ERC20 {
          uint256 private initialSupply;
          constructor(string memory name, string memory symbol, uint256 _initialSupply)         ERC20(name, symbol) {
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

## Reminder
Be aware and alert for some errors:

- You will notice if your code have an error check on the upper right side of your screen you will your mini-minimize entire code there that have a red lines, blue lines mean you are in that lines and red lines means error.
- You will see a Red Exclamation Mark in that line so you will notice that there some errors
- Check your File name if its red
- Don't forget to count and check some valuable symbols { } , [ ] , ( ) , ;

## Author
NTCIAN Rix
Email: 422003664@ntc.edu.ph
<br>
[Discord: @Rix](rix1473)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.

