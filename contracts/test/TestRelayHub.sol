// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

import "../BASRelayHub.sol";

import "../verifiers/FakeBlockVerifier.sol";

contract TestRelayHub is BASRelayHub {

    constructor() BASRelayHub(new FakeBlockVerifier()) {
    }

    function checkReceiptProof(uint256 /*chainId*/, bytes[] calldata /*blockProofs*/, bytes memory /*rawReceipt*/, bytes memory /*path*/, bytes calldata /*siblings*/) external pure override returns (bool) {
        return true;
    }

    function enableCrossChainBridge(uint256 chainId, address bridgeAddress) external {
        _registeredChains[chainId].bridgeAddress = bridgeAddress;
    }
}