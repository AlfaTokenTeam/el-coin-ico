pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract ElCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function ElCoin(address _owner)  UpgradeableToken(_owner) {
    name = "ElCoin";
    symbol = "ELD";
    totalSupply = 1000000000;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}