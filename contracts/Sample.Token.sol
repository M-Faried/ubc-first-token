pragma solidity ^0.8.0;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";


contract SampleToken is ERC20("SampleToken", "EGT") {
            
    uint public INITIAL_SUPPLY = 1000 * (10 * decimals());

    constructor() {
        _totalSupply = INITIAL_SUPPLY;
        _balances[msg.sender] = INITIAL_SUPPLY;
    }
}