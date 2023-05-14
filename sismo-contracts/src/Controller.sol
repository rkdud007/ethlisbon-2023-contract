// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "sismo-connect-solidity/SismoLib.sol"; // <--- add a Sismo Connect import

/*
 * @title Airdrop
 * @dev Simple Airdrop contract that mints a token to the msg.sender
 * This contract is used for tutorial purposes only
 * It will be used to demonstrate how to integrate Sismo Connect
 */
contract Controller is
  SismoConnect // <--- add a Sismo Connect inheritance
{
  using SismoConnectHelper for SismoConnectVerifiedResult;

  bytes16 public constant APP_ID = 0xf4977993e52606cfd67b7a1cde717069; // <--- add your appId as a constant
  uint inactivityTimeout;
  address controller_guardian_address = 0x00000000;
  address facts_registry_contract= 0x00000000;

  constructor(
    uint memory inactivityTimeout
  )
    SismoConnect(APP_ID) // <--- Sismo Connect constructor
  {
    setInactivityTimeout(inactivityTimeout);
  }

  function setInactivityTimeout(uint memory inactivityTimeout) public {
    _setInactivityTimeout(inactivityTimeout);
  }

  function _setInactivityTimeout(uint memory _inactivityTimeout) internal {
    //set inactivity timeout
    inactivityTimeout = _inactivityTimeout;
  }

  function executeInheritance(
    bytes memory response,
    uint new_device_key,
    uint new_admin_key,
    uint from_block
  ) public {
    //get caller address
    address caller = msg.sender;
    //get gaurdian address
    address guardian = controller_guardian_address;
    // check if the caller is gaurdian and if not return error
    if (caller != guardian) {
      revert("Controller: only guardian can execute inheritance");
    } else {
      // 1) can check if the user is a valid user of this group
      SismoConnectVerifiedResult memory result = verify({
        responseBytes: response,
        auth: buildAuth({authType: AuthType.VAULT}),
        signature: buildSignature({message: abi.encode(msg.sender)})
      });

      // if the proofs and signed message are valid, we take the userId from the verified result
      // in this case the userId is the vaultId (since we used AuthType.VAULT in the auth request), the anonymous identifier of a user's vault for a specific app --> vaultId = hash(userVaultSecret, appId)
      // In this contract, we use this vaultId as the tokenId of the NFT we mint to the user
      // This way, all proofs that are generated from the same vault will try to mint the same tokenId
      // So if a user tries to claim twice with a proof from the same vault, the vaultId will be the same and the contract will revert
      uint256 userId = SismoConnectHelper.getUserId(result, AuthType.VAULT);
      // _mint(msg.sender, tokenId);

      // get facts registry contract
      // address facts_registry = facts_registry_contract;
    //   uint256 nonce_before= facts_registry.get_verified_account_nonce(
    //     facts_registry, contract_address, from_block
    // );

    //  uint256 nonce_latest = IStarknetFactsRegistry.get_verified_account_nonce(
    //     facts_registry, contract_address, latest_block_num - 1
    // );
    return true;

    };

   
}
