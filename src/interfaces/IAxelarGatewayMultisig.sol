// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import { IAxelarGateway } from './IAxelarGateway.sol';

interface IAxelarGatewayMultisig is IAxelarGateway {

    event OwnershipTransferred(bytes32 indexed commandId, address[] preOwners, uint256 prevThreshold, address[] newOwners, uint256 newThreshold);

    event OperatorshipTransferred(bytes32 indexed commandId, address[] preOperators, uint256 prevThreshold, address[] newOperators, uint256 newThreshold);

    function owners() external view returns (address[] memory);

    function operators() external view returns (address[] memory);

}
