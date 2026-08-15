// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract IFVoting {
  // VOTING INFORMATIONS
    // - owner;
    // - title;
    // - description;
    // - idVoting;
    // - dateLimit;
    // - candidates.
    struct Candidate {
      string name;
      string linkImage;
      uint64 idCandidate;
      uint64 votes;
    }

    struct Voting {
      address owner;
      string title;
      string description;
      uint256 idVoting;
      uint64 startDate;
      uint64 endDate;
      Candidate[] candidates;
    }

    Voting[] public Votings;

    function createVoting(string memory _title, string memory _description, uint64 _dateStart, uint64 _endDate) public {
        Votings.push(Voting({
            owner: msg.sender,
            title: _title,
            description: _description,
            idVoting: Votings.length,
            startDate: _dateStart,
            endDate: _endDate,
            candidates: new Candidate[](0)
        }));
    }
}