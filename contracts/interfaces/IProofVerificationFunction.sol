// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

interface IProofVerificationFunction {

    function verifyValidatorTransition(bytes[] calldata proofs, uint256 chainId, address[] calldata existingValidatorSet) external view returns (address[] memory newValidatorSet);
}