# The missing tokenURI() for the CryptoPunks

This project implements the `tokenURI` function that is missing in the CryptoPunks
contract.

This contract uses the attributes and image data from
`0x16F5A35647D6F03D5D3da7b35409D65ba03aF3B2`
which is the "CryptoPunks Data" contract, deployed by Larva Labs, 8th of Aug 2011.
https://www.larvalabs.com/blog/2021-8-18-18-0/on-chain-cryptopunks

Marketplaces, Wallets and contracts can use this convenient contract to fetch metadata 
about each punk. No external websites required.

### Interface

/**
* @dev tokenURI gets the metadata about a punk and returns as a JSON formatted string,
*   according to the ERC721 schema and OpenSea recommendations. It also embeds the SVG data.
*   The attributes and SVG data are fetched form the CryptoPunksData contract, which stores
*   all the CryptoPunks metadata on-chain.
* @param _tokenId the punk id
*/
```solidity
function tokenURI(uint256 _tokenId) external view returns (string memory);
```

/**
* @dev parseAttributes returns an array of punk attributes. 8 rows in total
*   The first row is the Type, and next seven rows are the attributes.
*   The values are fetched form the CryptoPunksData contract and then the string is parsed.
* @param _tokenId the punk id
*/
```solidity
function parseAttributes(uint256 _tokenId) public view returns (string[8] memory);
```

/**
* @dev getAttributes calls parseAttributes and returns the result as JSON
* @param _tokenId the punk id
*/
```solidity
function getAttributes(uint256 _tokenId) public view returns (string memory);
```



