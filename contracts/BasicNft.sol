// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

//Inheritence
contract BasicNft is ERC721 {
    string public constant TOKEN_URI =
        "ipfs://bafkreidys4xvn7lq27l5zerb4bu5zg4a7urruocjlaw2ulazpumd2iwipe";
    uint256 private s_tokenCounter;

    constructor() ERC721("N-Word Pass Token", "NPASS") {
        s_tokenCounter = 0;
    }

    function mintNft() public returns (uint256) {
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter++;
        return s_tokenCounter;
    }

    function tokenURI(
        uint256 /* tokenId */
    ) public view override returns (string memory) {
        return TOKEN_URI;
    }

    function getTokenCounter() public view returns (uint256) {
        return s_tokenCounter;
    }
}
