pragma solidity ^0.8.6;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';
//import ERC20 functions from OpenZeppelin template


contract Lings is ERC20 { //make Lings inherit ERC20
    address public admin; 


    constructor() ERC20('Lings', 'yL') { //uses ERC20 constructor
        _mint(msg.sender, 1000000 * 10 ** 18); //creates a FIXED SUPPLY of 1,000,000 Lings
        admin = msg.sender; //set admin to zero account
    }
    
    function mint(address to, uint amount) external {
        require(msg.sender == admin, 'Only Admin');
        _mint(to, amount);
        
    }
    
    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }
}