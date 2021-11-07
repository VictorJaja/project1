// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal{
    struct Message {
        string mssg;
        address sender;
    }

    Message [] messages ;
    uint64 totalWaves;
    constructor(){
        console.log("\n **I am a contract, and I am smart ** \n");

    }
    function wave(string memory _wave) public{
        totalWaves += 1;
        console.log("%s has waved us! and say %s", msg.sender, _wave );
        messages.push(Message( _wave , msg.sender ));
    }
    function getTotalWaves() public view returns (uint64){
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}