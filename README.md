# OctoSwap V1 (Classic AMM)

## Contract Details
- **Contract Name**: `OctoswapFactory`
- **Solidity Version**: `^0.5.16`
- **Compiler Settings**:
  - **Optimization**: `Enabled` (Runs: `999999`)
  - **EVM Version**: `Istanbul`

- **Deployed Address (Monad Mainnet)**: `0xCe104732685B9D7b2F07A09d828F6b19786cdA32`

## Contract Changes

Comparison between `octoswap-v1-core` and original `uniswap/v2-core`.

### OctoswapERC20.sol (UniswapV2ERC20.sol)
- **Line 6**: Contract name `UniswapV2ERC20` → `OctoswapERC20`
- **Line 9**: Token name `'Uniswap V2'` → `'OctoSwap LP'`
- **Line 10**: Token symbol `'UNI-V2'` → `'OCTO-LP'`

### OctoswapFactory.sol (UniswapV2Factory.sol)
- **Line 4**: Import `'./UniswapV2Pair.sol'` → `'./OctoswapPair.sol'`
- **Line 6**: Contract name `UniswapV2Factory` → `OctoswapFactory`
- **Line 28**: Type reference `type(UniswapV2Pair)` → `type(OctoswapPair)`

### OctoswapPair.sol (UniswapV2Pair.sol)
- **Line 4**: Import `'./UniswapV2ERC20.sol'` → `'./OctoswapERC20.sol'`
- **Line 11**: Contract name and inheritance `UniswapV2Pair is IUniswapV2Pair, UniswapV2ERC20` → `OctoswapPair is IUniswapV2Pair, OctoswapERC20`

## Unchanged Components

- **Interfaces**: All interface files identical (100% match)
- **Libraries**: All library files identical (100% match)

---

## Summary

All changes are purely branding-related (contract names, LP token name/symbol). All functional code, logic, fee calculations, Solidity versions, and compiler optimization settings remain 100% identical to the original Uniswap V2 Core contracts. 

