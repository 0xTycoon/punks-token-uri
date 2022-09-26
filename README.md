# The missing tokenURI() for the CryptoPunks

This project implements the `tokenURI` function that is missing in the CryptoPunks
contract.

This contract uses the attributes and image data from
`0x16F5A35647D6F03D5D3da7b35409D65ba03aF3B2`
which is the "CryptoPunks Data" contract, deployed by Larva Labs, 8th of Aug 2021.
https://www.larvalabs.com/blog/2021-8-18-18-0/on-chain-cryptopunks

Marketplaces, Wallets and contracts can use this convenient contract to fetch metadata 
about each punk. No external websites required.

### Deployment

Ethereum Mainnet https://etherscan.io/address/0x93b919324ec9d144c1c49ef33d443de0c045601e#code

### Interface


`@dev` tokenURI gets the metadata about a punk and returns as a JSON formatted string,
   according to the ERC721 schema and OpenSea recommendations. It also embeds the SVG data.
   The attributes and SVG data are fetched form the CryptoPunksData contract, which stores
   all the CryptoPunks metadata on-chain.

`@param` _tokenId the punk id

```solidity
function tokenURI(uint256 _tokenId) external view returns (string memory);
```

Example result:

```javascript
{
   "description":"CryptoPunks launched as a fixed set of 10,000 items in mid-2017 and became one of the inspirations for the ERC-721 standard. They have been featured in places like The New York Times, Christie's of London, Art|Basel Miami, and The PBS NewsHour.",
   "external_url":"https://cryptopunks.app/cryptopunks/details/8348",
   "image":"data:image/svg+xml;base64,ZGF0YTppbWFnZS9zdmcreG1sO3V0ZjgsPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMiIgdmlld0JveD0iMCAwIDI0IDI0Ij48cmVjdCB4PSI3IiB5PSIxIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBzaGFwZS1yZW5kZXJpbmc9ImNyaXNwRWRnZXMiIGZpbGw9IiMwMDAwMDBmZiIvPjxyZWN0IHg9IjgiIHk9IjEiIHdpZHRoPSIxIiBoZWlnaHQ9IjEiIHNoYXBlLXJlbmRlcmluZz0iY3Jpc3BFZGdlcyIgZmlsbD0iIzAwMDAwMGZmIi8+PHJlY3QgeD0iOSIgeT0iMSIgd2lkdGg9IjEiIGhlaWdodD0iMSIgc2hhcGUtcmVuZGVyaW5nPSJjcmlzcEVkZ2VzIiBmaWxsPSIjMDAwMDAwZmYiLz48cmVjdCB4PSIxMCIgeT0iMSIgd2lkdGg9IjEiIGhlaWdodD0iMSIgc2hhcGUtcmVuZGVyaW5nPSJjcmlzcEVkZ2VzIiBmaWxsPSIjMDAwMDAwZmYiLz48cmVjdCB4PSIxMSIgeT0iMSIgd2lkdGg9IjEiIGhlaWdodD0iMSIgc2hhcGUtcmVuZGVyaW5nPSJjcmlzcEVkZ2VzIiBmaWxsPSIjMDAwMDAwZmYiLz48cmVjdCB4PSIxMiIgeT0iMSIgd2lkdGg9IjEiIGhlaWdodD0iMSIgc2hhcGUtcmVuZGVyaW5nPSJjcmlzcEVkZ2VzIiBmaWxsPSIjMDAwMDAwZmYiLz48cmVjdCB4PSIxMyIgeT0iMSIgd2lkdGg9IjEiIGhlaWdodD0iMSIgc2hhcGUtcmVuZGVyaW5nPSJjcmlzcEVkZ2VzIiBmaWxsPSIjMDAwMDAwZmYiLz48cmVjdCB4PSIxNCIgeT0iMSIgd2lkdGg9IjEiIGhlaWdodD0iMSIgc2hhcGUtcmVuZGVyaW5nPSJjcmlzcEVkZ2VzIiBmaWxsPSIjMDAwMDAwZmYiLz48cmVjdCB4PSIxNSIgeT0iMSIgd2lkdGg9IjEiIGhlaWdodD0iMSIgc2hhcGUtcmVuZGVyaW5nPSJjcmlzcEVkZ2VzIiBmaWxsPSIjMDAwMDAwZmYiLz48cmVjdCB4PSI2IiB5PSIyIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBzaGFwZS1yZW5kZXJpbmc9ImNyaXNwRWRnZXMiIGZpbGw9IiMwMDAwMDBmZiIvPjxyZWN0IHg9IjciIHk9IjIiIHdpZHRoPSIxIiBoZWlnaHQ9IjEiIHNoYXBlLXJlbmRlcmluZz0iY3Jpc3BFZGdlcyIgZmlsbD0iIzAwMDAwMGZmIi8+PHJlY3QgeD0iOCIgeT0iMiIgd2lkdGg9IjEiIGhlaWdodD0iMSIgc2hhcGUtcmVuZGVyaW5nPSJjcmlzcEVkZ2VzIiBmaWxsPSIjMDAwMDAwZmYiLz48cmVjdCB4PSI5IiB5PSIyIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBzaGFwZS1yZW5kZXJpbmc9ImNyaXNwRWRnZXMiIGZpbGw9IiMwMDAwMDBmZiIvPi4uLiBibGFoIGJsYWggYmxhaDwvc3ZnPg==",
   "name":"CryptoPunk #8348",
   "attributes":[
      {
         "trait_type":"Type",
         "value":"Male 2"
      },
      {
         "trait_type":"Accessory",
         "value":"Buck Teeth"
      },
      {
         "trait_type":"Accessory",
         "value":"Mole"
      },
      {
         "trait_type":"Accessory",
         "value":"Big Beard"
      },
      {
         "trait_type":"Accessory",
         "value":"Earring"
      },
      {
         "trait_type":"Accessory",
         "value":"Top Hat"
      },
      {
         "trait_type":"Accessory",
         "value":"Cigarette"
      },
      {
         "trait_type":"Accessory",
         "value":"Classic Shades"
      }
   ]
}
```

* The above image data is not the actual data, it has been truncated for this example.


`@dev` parseAttributes returns an array of punk attributes. 8 rows in total
   The first row is the Type, and next seven rows are the attributes.
   The values are fetched form the CryptoPunksData contract and then the string is parsed.
 
`@param` _tokenId the punk id

```solidity
function parseAttributes(uint256 _tokenId) public view returns (string[8] memory);
```


`@dev` getAttributes calls parseAttributes and returns the result as JSON
 
`@param` _tokenId the punk id

```solidity
function getAttributes(uint256 _tokenId) public view returns (string memory);
```



