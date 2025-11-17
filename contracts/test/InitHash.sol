pragma solidity =0.5.16;

import '../OctoswapPair.sol';

contract InitHash {
    function getInitHash() public pure returns (bytes32) {
        bytes memory bytecode = type(OctoswapPair).creationCode;
        return keccak256(bytecode);
    }
}
