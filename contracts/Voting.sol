// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {
    string[] public candidates;
    mapping(string => uint256) public votes;

    constructor(string[] memory _candidates) {
        candidates = _candidates;
    }

    function vote(string memory _candidate) public {
        votes[_candidate]++;
    }

    function getVotes(string memory _candidate) public view returns (uint256) {
        return votes[_candidate];
    }
}
