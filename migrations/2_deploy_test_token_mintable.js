const TestTokenMintable = artifacts.require("TestTokenMintable")

module.exports = async function(deployer, network, accounts) {
    await deployer.deploy(TestTokenMintable)
}