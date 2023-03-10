// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


import { IAccessControlEnumerable } from "@openzeppelin/contracts/access/IAccessControlEnumerable.sol";


/**
* @title IYieldSyncGovernance
*/
interface IYieldSyncGovernance is
	IAccessControlEnumerable
{
	/**
	* @notice Get roleHash
	* @dev [!restriction]
	* @dev [view-mapping]
	* @return {bytes32}
	*/
	function roleString_roleHash(string memory role)
		external
		view
		returns (bytes32)
	;

	/**
	* @notice Add to roleString_roleHash
	* @dev [restriction] AccessControlEnumerable → DEFAULT_ADMIN_ROLE
	* @dev [add] `roleString_roleHash`
	*      [update] AccessControlEnumerable → Add `_role`
	* @param role {string}
	*/
	function addRoleString_roleHash(string memory role)
		external
	;
}
