import { expect } from "chai";
import { ethers } from "hardhat";

describe("GetToken", () => {
  it("Should return the Token Symbol and CoinName", async function () {
    const Token = await ethers.getContractFactory("Token");
    const token = await Token.deploy();
    await token.deployed();

    expect(await token.name()).to.equal("Sample token");
  });
});
