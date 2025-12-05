// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

/**
 * @title PayNova Whitepaper NFT (PNWP)
 * @notice NFT representing the official PayNova hybrid payments infrastructure whitepaper.
 *
 * @dev
 * - One free claim per wallet via {claim}.
 * - Unlimited total supply (no global minting cap).
 * - No owner, no admin, no special permissions (fully trustless).
 * - All tokens share the same metadata URI stored on IPFS (Pinata CID).
 * - Built on OpenZeppelin ERC721 v5 for broad wallet/indexer compatibility.
 *
 * Project: PayNova – Hybrid Payments Infrastructure
 * PAYN (BEP-20 / ERC-20 compatible): https://bscscan.com/token/0xea706e99170E2a0045c80caFA06A2790e2783dd0
 * Site:    https://pay-nova.org/
 */
contract PayNovaWhitepaperNFT is ERC721 {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    mapping(address => bool) public hasClaimed;

    string private constant _TOKEN_URI =
        "ipfs://bafkreihoauvfbzae3kfpitxt3bqutp64xvj5li4iyyro4xpy6l5fhfew7u";

    event WhitepaperClaimed(address indexed account, uint256 indexed tokenId);

    constructor() ERC721("PayNova Whitepaper NFT", "PNWP") {}

    function totalMinted() public view returns (uint256 total) {
        return _tokenIdCounter.current();
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory uri) {
        require(_ownerOf(tokenId) != address(0), "URI query for nonexistent token");
        return _TOKEN_URI;
    }

    function claim() external {
        require(!hasClaimed[msg.sender], "Already claimed");

        hasClaimed[msg.sender] = true;

        _tokenIdCounter.increment();
        uint256 tokenId = _tokenIdCounter.current();

        _safeMint(msg.sender, tokenId);

        emit WhitepaperClaimed(msg.sender, tokenId);
    }
}
