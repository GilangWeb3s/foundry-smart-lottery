//SPDX-lisence-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title  Simple Raffle Contract
 * @author Gilang Maulana
 * @notice This contract is for educational purposes only
 * @dev    Implement Chainlink VRF version 2.5
 */

contract Raffle{
    error Raffle__sendMoreEth();

    uint256 private immutable i_entranceFee; 
    address payable[] private s_players;

    constructor(uint256 entranceFee){
        i_entranceFee = entranceFee;
    }

    function enterRaffle() public payable{
        if(msg.value < i_entranceFee){
            revert Raffle__sendMoreEth();
        }
        s_players.push(payable(msg.sender));
    }

    function pickWinner() public{

    }

    function getEntranceFee() external view returns(uint256){
        return i_entranceFee;
    }
}