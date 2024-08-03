//SPDX-lisence-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title  Simple Raffle Contract
 * @author Gilang Maulana
 * @notice This contract is for educational purposes only
 * @dev    Implement Chainlink VRF version 2.5
 */

contract Raffle{
    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee){
        i_entranceFee = entranceFee;
    }

    function enterRaffle() public payable{

    }

    function pickWinner() public{

    }

    function getEntranceFee() external view returns(uint256){
        return i_entranceFee;
    }
}