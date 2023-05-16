// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Events {
  // core token events
  event Mint(
    address indexed caller,
    address indexed onBehalfOf,
    uint256 value,
    uint256 balanceIncrease,
    uint256 index
  );
  event Burn(
    address indexed from,
    address indexed target,
    uint256 value,
    uint256 balanceIncrease,
    uint256 index
  );
  event Transfer(address indexed from, address indexed to, uint256 value);

  // setter/updater methods
  event ATokenSet(address indexed);
  event VariableDebtTokenSet(address indexed variableDebtToken);
  event GhoTreasuryUpdated(address indexed oldGhoTreasury, address indexed newGhoTreasury);
  event DiscountPercentUpdated(
    address indexed user,
    uint256 oldDiscountPercent,
    uint256 indexed newDiscountPercent
  );
  event DiscountRateStrategyUpdated(
    address indexed oldDiscountRateStrategy,
    address indexed newDiscountRateStrategy
  );
  event ReserveInterestRateStrategyChanged(
    address indexed asset,
    address oldStrategy,
    address newStrategy
  );

  // flashmint-related events
  event FlashMint(
    address indexed receiver,
    address indexed initiator,
    address asset,
    uint256 indexed amount,
    uint256 fee
  );
  event FeeUpdated(uint256 oldFee, uint256 newFee);

  // facilitator-related events
  event FacilitatorAdded(
    address indexed facilitatorAddress,
    bytes32 indexed label,
    uint256 bucketCapacity
  );
  event FacilitatorRemoved(address indexed facilitatorAddress);
  event FacilitatorBucketCapacityUpdated(
    address indexed facilitatorAddress,
    uint256 oldCapacity,
    uint256 newCapacity
  );
  event FacilitatorBucketLevelUpdated(
    address indexed facilitatorAddress,
    uint256 oldLevel,
    uint256 newLevel
  );

  // other
  event FeesDistributedToTreasury(
    address indexed ghoTreasury,
    address indexed asset,
    uint256 amount
  );

  event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);
  event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);
}
