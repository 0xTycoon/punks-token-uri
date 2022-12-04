# The missing tokenURI() for the CryptoPunks
Version 0.0.2

This project implements the `tokenURI` function that is missing in the CryptoPunks
contract.

This contract uses the attributes and image data from
`0x16F5A35647D6F03D5D3da7b35409D65ba03aF3B2`
which is the "CryptoPunks Data" contract, deployed by Larva Labs, 8th of Aug 2021.
https://www.larvalabs.com/blog/2021-8-18-18-0/on-chain-cryptopunks

Marketplaces, Wallets and contracts can use this convenient contract to fetch metadata 
about each punk. No external websites required.

### Deployment

Ethereum Mainnet, contract's address: `0xD8E916C3016bE144eb2907778cf972C4b01645fC`

https://etherscan.io/address/0xD8E916C3016bE144eb2907778cf972C4b01645fC#code


### Interface


`@dev` tokenURI gets the metadata about a punk and returns as a JSON formatted string,
   according to the ERC721 schema and OpenSea recommendations. It also embeds the SVG data.
   The attributes and SVG data are fetched form the CryptoPunksData contract, which stores
   all the CryptoPunks metadata on-chain.

`@param` _tokenId the punk id

```solidity
function tokenURI(uint256 _tokenId) external view returns (string memory);
```

Example result, data URI is returned with the following format:

```text
data:application/json;base64,ew0KICAgImRlc2NyaXB0aW9uIjoiQ3J5cHRvUHVua3MgbGF1bmNoZWQgYXMgYSBmaXhlZCBzZXQgb2YgMTAsMDAwIGl0ZW1zIGluIG1pZC0yMDE3IGFuZCBiZWNhbWUgb25lIG9mIHRoZSBpbnNwaXJhdGlvbnMgZm9yIHRoZSBFUkMtNzIxIHN0YW5kYXJkLiBUaGV5IGhhdmUgYmVlbiBmZWF0dXJlZCBpbiBwbGFjZXMgbGlrZSBUaGUgTmV3IFlvcmsgVGltZXMsIENocmlzdGllJ3Mgb2YgTG9uZG9uLCBBcnR8QmFzZWwgTWlhbWksIGFuZCBUaGUgUEJTIE5ld3NIb3VyLiIsDQogICAiZXh0ZXJuYWxfdXJsIjoiaHR0cHM6Ly9jcnlwdG9wdW5rcy5hcHAvY3J5cHRvcHVua3MvZGV0YWlscy84MzQ4IiwNCiAgICJpbWFnZSI6ImRhdGE6aW1hZ2Uvc3ZnK3htbDtiYXNlNjQsWkdGMFlUcHBiV0ZuWlM5emRtY3JlRzFzTzNWMFpqZ3NQSE4yWnlCNGJXeHVjejBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TWpBd01DOXpkbWNpSUhabGNuTnBiMjQ5SWpFdU1pSWdkbWxsZDBKdmVEMGlNQ0F3SURJMElESTBJajQ4Y21WamRDQjRQU0kzSWlCNVBTSXhJaUIzYVdSMGFEMGlNU0lnYUdWcFoyaDBQU0l4SWlCemFHRndaUzF5Wlc1a1pYSnBibWM5SW1OeWFYTndSV1JuWlhNaUlHWnBiR3c5SWlNd01EQXdNREJtWmlJdlBqeHlaV04wSUhnOUlqZ2lJSGs5SWpFaUlIZHBaSFJvUFNJeElpQm9aV2xuYUhROUlqRWlJSE5vWVhCbExYSmxibVJsY21sdVp6MGlZM0pwYzNCRlpHZGxjeUlnWm1sc2JEMGlJekF3TURBd01HWm1JaTgrUEhKbFkzUWdlRDBpT1NJZ2VUMGlNU0lnZDJsa2RHZzlJakVpSUdobGFXZG9kRDBpTVNJZ2MyaGhjR1V0Y21WdVpHVnlhVzVuUFNKamNtbHpjRVZrWjJWeklpQm1hV3hzUFNJak1EQXdNREF3Wm1ZaUx6NDhjbVZqZENCNFBTSXhNQ0lnZVQwaU1TSWdkMmxrZEdnOUlqRWlJR2hsYVdkb2REMGlNU0lnYzJoaGNHVXRjbVZ1WkdWeWFXNW5QU0pqY21semNFVmtaMlZ6SWlCbWFXeHNQU0lqTURBd01EQXdabVlpTHo0OGNtVmpkQ0I0UFNJeE1TSWdlVDBpTVNJZ2QybGtkR2c5SWpFaUlHaGxhV2RvZEQwaU1TSWdjMmhoY0dVdGNtVnVaR1Z5YVc1blBTSmpjbWx6Y0VWa1oyVnpJaUJtYVd4c1BTSWpNREF3TURBd1ptWWlMejQ4Y21WamRDQjRQU0l4TWlJZ2VUMGlNU0lnZDJsa2RHZzlJakVpSUdobGFXZG9kRDBpTVNJZ2MyaGhjR1V0Y21WdVpHVnlhVzVuUFNKamNtbHpjRVZrWjJWeklpQm1hV3hzUFNJak1EQXdNREF3Wm1ZaUx6NDhjbVZqZENCNFBTSXhNeUlnZVQwaU1TSWdkMmxrZEdnOUlqRWlJR2hsYVdkb2REMGlNU0lnYzJoaGNHVXRjbVZ1WkdWeWFXNW5QU0pqY21semNFVmtaMlZ6SWlCbWFXeHNQU0lqTURBd01EQXdabVlpTHo0OGNtVmpkQ0I0UFNJeE5DSWdlVDBpTVNJZ2QybGtkR2c5SWpFaUlHaGxhV2RvZEQwaU1TSWdjMmhoY0dVdGNtVnVaR1Z5YVc1blBTSmpjbWx6Y0VWa1oyVnpJaUJtYVd4c1BTSWpNREF3TURBd1ptWWlMejQ4Y21WamRDQjRQU0l4TlNJZ2VUMGlNU0lnZDJsa2RHZzlJakVpSUdobGFXZG9kRDBpTVNJZ2MyaGhjR1V0Y21WdVpHVnlhVzVuUFNKamNtbHpjRVZrWjJWeklpQm1hV3hzUFNJak1EQXdNREF3Wm1ZaUx6NDhjbVZqZENCNFBTSTJJaUI1UFNJeUlpQjNhV1IwYUQwaU1TSWdhR1ZwWjJoMFBTSXhJaUJ6YUdGd1pTMXlaVzVrWlhKcGJtYzlJbU55YVhOd1JXUm5aWE1pSUdacGJHdzlJaU13TURBd01EQm1aaUl2UGp4eVpXTjBJSGc5SWpjaUlIazlJaklpSUhkcFpIUm9QU0l4SWlCb1pXbG5hSFE5SWpFaUlITm9ZWEJsTFhKbGJtUmxjbWx1WnowaVkzSnBjM0JGWkdkbGN5SWdabWxzYkQwaUl6QXdNREF3TUdabUlpOCtQSEpsWTNRZ2VEMGlPQ0lnZVQwaU1pSWdkMmxrZEdnOUlqRWlJR2hsYVdkb2REMGlNU0lnYzJoaGNHVXRjbVZ1WkdWeWFXNW5QU0pqY21semNFVmtaMlZ6SWlCbWFXeHNQU0lqTURBd01EQXdabVlpTHo0OGNtVmpkQ0I0UFNJNUlpQjVQU0l5SWlCM2FXUjBhRDBpTVNJZ2FHVnBaMmgwUFNJeElpQnphR0Z3WlMxeVpXNWtaWEpwYm1jOUltTnlhWE53UldSblpYTWlJR1pwYkd3OUlpTXdNREF3TURCbVppSXZQaTR1TGlCaWJHRm9JR0pzWVdnZ1lteGhhRHd2YzNablBnPT0iLA0KICAgIm5hbWUiOiJDcnlwdG9QdW5rICM4MzQ4IiwNCiAgICJhdHRyaWJ1dGVzIjpbDQogICAgICB7DQogICAgICAgICAidHJhaXRfdHlwZSI6IlR5cGUiLA0KICAgICAgICAgInZhbHVlIjoiTWFsZSAyIg0KICAgICAgfSwNCiAgICAgIHsNCiAgICAgICAgICJ0cmFpdF90eXBlIjoiQWNjZXNzb3J5IiwNCiAgICAgICAgICJ2YWx1ZSI6IkJ1Y2sgVGVldGgiDQogICAgICB9LA0KICAgICAgew0KICAgICAgICAgInRyYWl0X3R5cGUiOiJBY2Nlc3NvcnkiLA0KICAgICAgICAgInZhbHVlIjoiTW9sZSINCiAgICAgIH0sDQogICAgICB7DQogICAgICAgICAidHJhaXRfdHlwZSI6IkFjY2Vzc29yeSIsDQogICAgICAgICAidmFsdWUiOiJCaWcgQmVhcmQiDQogICAgICB9LA0KICAgICAgew0KICAgICAgICAgInRyYWl0X3R5cGUiOiJBY2Nlc3NvcnkiLA0KICAgICAgICAgInZhbHVlIjoiRWFycmluZyINCiAgICAgIH0sDQogICAgICB7DQogICAgICAgICAidHJhaXRfdHlwZSI6IkFjY2Vzc29yeSIsDQogICAgICAgICAidmFsdWUiOiJUb3AgSGF0Ig0KICAgICAgfSwNCiAgICAgIHsNCiAgICAgICAgICJ0cmFpdF90eXBlIjoiQWNjZXNzb3J5IiwNCiAgICAgICAgICJ2YWx1ZSI6IkNpZ2FyZXR0ZSINCiAgICAgIH0sDQogICAgICB7DQogICAgICAgICAidHJhaXRfdHlwZSI6IkFjY2Vzc29yeSIsDQogICAgICAgICAidmFsdWUiOiJDbGFzc2ljIFNoYWRlcyINCiAgICAgIH0NCiAgIF0NCn0=
```

Which produces the following result when the above link is accessed

```json
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

### Version history
0.0.0 first release
0.0.1 changes tokenURI to return payload as a base64 encoded json URI
0.0.2 bug fix: correctly parse attribute starting with a number (3D Glasses)

