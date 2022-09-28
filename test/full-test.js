
const { expect } = require("chai");
const {ContractFactory, utils, BigNumber} = require('ethers');

describe("CryptoPunksTokenUri", function () {
  let owner, simp, elizabeth;
  let CryptoPunksTokenUri, uri, CryptoPunksDataMock, mock;

  before(async function () {
    [owner, simp, elizabeth] = await ethers.getSigners();

    CryptoPunksDataMock = await ethers.getContractFactory("CryptoPunksDataMock");
    mock = await CryptoPunksDataMock.deploy();
    await mock.deployed();

    CryptoPunksTokenUri = await ethers.getContractFactory("CryptoPunksTokenUri");
    uri = await CryptoPunksTokenUri.deploy(mock.address);
    await uri.deployed();


  });

  function parseDataUri(data) {
    let header = data.substring(0, 29);
    if (header !== "data:application/json;base64,") {
      return false;
    }
    return atob(data.substring(29));
  }

  describe("FullTest", function () {

    it("getAttributes", async function () {
      let result = await uri.getAttributes(8348);
      let data = JSON.parse(result);
      expect(data[0].trait_type).to.equal("Type");
      expect(data[0].value).to.equal("Male 2");
      expect(data[1].trait_type).to.equal("Accessory");
      expect(data[1].value).to.equal("Buck Teeth");

      result = await uri.getAttributes(741);
      data = JSON.parse(result);
      expect(data[0].trait_type).to.equal("Type");
      expect(data[0]["value"]).to.equal("Male 1");
      expect(data.length).to.equal(1);

      result = await uri.getAttributes(4513);
      data = JSON.parse(result);
      expect(data[0].trait_type).to.equal("Type");
      expect(data[0].value).to.equal("Zombie");
      expect(data[1].trait_type).to.equal("Accessory");
      expect(data[1].value).to.equal("Luxurious Beard");
    })

    it("tokenURI", async function () {

      let result = await uri.tokenURI(8348);
      let data = JSON.parse(parseDataUri(result));
      expect(Object.keys(data).length).to.equal(5);
      expect(data.attributes.length).to.equal(8);

      result = await uri.tokenURI(741);
      data = JSON.parse(parseDataUri(result));
      expect(Object.keys(data).length).to.equal(5);
      expect(data.attributes.length).to.equal(1);

      result = await uri.tokenURI(4513);
      data = JSON.parse(parseDataUri(result));
      expect(Object.keys(data).length).to.equal(5);
      expect(data.attributes.length).to.equal(4);


    });

  });


});
