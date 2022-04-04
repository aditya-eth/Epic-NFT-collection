// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

// We first import some OpenZeppelin Contracts.
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract MyEpicNFT is ERC721URIStorage {
    using Counters for Counters.Counters;
    Counters.Counter private _tokenIds;

    constructor() ERC721 ("SphericalNFT", "SNFT") {
        console.log("This is my NFT contract. Woah!");
    } 

    function makeAnEpicNFT() public {
        uint newItemId = _tokenIds.current();

        _safeMint(msg.sender, newItemId);

        _setTOkenURI(newItemId, "blah");

        _tokenIds.increment();
    }
}