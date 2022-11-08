const { expect } = require("chai");
const { BigNumber } = require("ethers");
const { ethers, waffle } = require("hardhat");

describe("Attack Prey.sol", () => {
    it("Should change the owner of the Prey contract", async () => {
        const Attack = await ethers.getContractFactory("Attack");
        const attack = await Attack.deploy();
        await attack.deployed();

        const Prey = await ethers.getContractFactory("Prey");
        const prey = await Prey.deploy(attack.address, {
            value: ethers.utils.parseEther("4"),
        });
        await prey.deployed();

        const [_, addr1] = await ethers.getSigners();

        let tx = await prey.connect(addr1).addUser();
        await tx.wait();

        const eligible = await prey.connect(addr1).isEligible();
        expect(eligible).to.equal(false);
    });
});