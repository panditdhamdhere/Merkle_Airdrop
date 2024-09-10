// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test, console} from "forge-std/Test.sol";
import {MerkleAirdrop} from "../src/MerkleAirdrop.sol";
import {MisalToken} from "../src/MisalToken.sol";

contract MerkleAirdropTest is Test {
    MerkleAirdrop public airdrop;
    MisalToken public token;

    bytes32 public ROOT =
        0xaa5d581231e596618465a56aa0f5870ba6e20785fe436d5bfb82b08662ccc7c4;
    address user;
    uint256 userPrivKey;

    function setUp() public {
        token = new MisalToken();
        airdrop = new MerkleAirdrop(ROOT, token);
        (user, userPrivKey) = makeAddrAndKey("user");
    }

    function testUsersCanClaim() public {
        console.log("user address:", user);
    }
}
