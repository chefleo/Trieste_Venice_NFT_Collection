// contracts/Trieste_Venice
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract Trieste_Venice is ERC1155, Ownable{

    uint256 public constant Trieste_0 = 0;
    uint256 public constant Trieste_1 = 1;
    uint256 public constant Trieste_2 = 2;
    uint256 public constant Trieste_3 = 3;
    uint256 public constant Trieste_4 = 4;
    uint256 public constant Trieste_5 = 5;
    uint256 public constant Trieste_6 = 6;
    uint256 public constant Trieste_7 = 7;
    uint256 public constant Trieste_8 = 8;
    uint256 public constant Trieste_9 = 9;
    uint256 public constant Trieste_10 = 10;
    uint256 public constant Trieste_11 = 11;
    uint256 public constant Trieste_12 = 12;
    uint256 public constant Trieste_13 = 13;
    uint256 public constant Trieste_14 = 14;
    uint256 public constant Venice_15 = 15;
    uint256 public constant Venice_16 = 16;
    uint256 public constant Venice_17 = 17;
    uint256 public constant Venice_18 = 18;
    uint256 public constant Venice_19 = 19;
    uint256 public constant Venice_20 = 20;
    uint256 public constant Venice_21 = 21;
    uint256 public constant Venice_22 = 22;
    uint256 public constant Venice_23 = 23;
    uint256 public constant Venice_24 = 24;
    uint256 public constant Venice_25 = 25;
    uint256 public constant Venice_26 = 26;
    uint256 public constant Venice_27 = 27;

    mapping (uint256 => string) private _uris;

    constructor() public ERC1155("https://gateway.pinata.cloud/ipfs/QmdZ1Ua2FpbCqhCtro1jrNbCrkga4sAxyByAsZYHbhRYuY/{id}.json") {
        _mint(msg.sender, Trieste_0, 30, "");
        _mint(msg.sender, Trieste_1, 30, "");
        _mint(msg.sender, Trieste_2, 30, "");
        _mint(msg.sender, Trieste_3, 30, "");
        _mint(msg.sender, Trieste_4, 30, "");
        _mint(msg.sender, Trieste_5, 30, "");
        _mint(msg.sender, Trieste_6, 30, "");
        _mint(msg.sender, Trieste_7, 30, "");
        _mint(msg.sender, Trieste_8, 30, "");
        _mint(msg.sender, Trieste_9, 30, "");
        _mint(msg.sender, Trieste_10, 30, "");
        _mint(msg.sender, Trieste_11, 30, "");
        _mint(msg.sender, Trieste_12, 30, "");
        _mint(msg.sender, Trieste_13, 30, "");
        _mint(msg.sender, Trieste_14, 30, "");
        _mint(msg.sender, Venice_15, 30, "");
        _mint(msg.sender, Venice_16, 30, "");
        _mint(msg.sender, Venice_17, 30, "");
        _mint(msg.sender, Venice_18, 30, "");
        _mint(msg.sender, Venice_19, 30, "");
        _mint(msg.sender, Venice_20, 30, "");
        _mint(msg.sender, Venice_21, 30, "");
        _mint(msg.sender, Venice_22, 30, "");
        _mint(msg.sender, Venice_23, 30, "");
        _mint(msg.sender, Venice_24, 30, "");
        _mint(msg.sender, Venice_25, 30, "");
        _mint(msg.sender, Venice_26, 30, "");
        _mint(msg.sender, Venice_27, 30, "");
    }

    function mint(address account, uint256 id, uint256 amount) public onlyOwner {
            _mint(account, id, amount, "");
    }

    function burn(address account, uint256 id, uint256 amount) public {
        require(msg.sender == account);
        _burn(account, id, amount);
    }

    function uri(uint256 tokenId) override public view returns (string memory){
    return(
        string(abi.encodePacked(
            "https://gateway.pinata.cloud/ipfs/QmdZ1Ua2FpbCqhCtro1jrNbCrkga4sAxyByAsZYHbhRYuY/",
            Strings.toString(tokenId),
            ".json"
        ))
    );
    }

    function setTokenUri(uint256 tokenId, string memory uri) public onlyOwner {
        require(bytes(_uris[tokenId]).length == 0, "Cannot set uri twice"); 
        _uris[tokenId] = uri; 
    }

}