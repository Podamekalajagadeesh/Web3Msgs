// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract HelloBlockchain {
    string private message;
    
    event MessageUpdated(address indexed sender, string newMessage, uint256 timestamp);

    constructor(string memory _message) {
        message = _message;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function setMessage(string memory _newMessage) public {
        message = _newMessage;
        emit MessageUpdated(msg.sender, _newMessage, block.timestamp);
    }
}
