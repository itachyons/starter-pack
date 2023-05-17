const TestTokenWithConstructor = artifacts.require("TestTokenWithConstructor")

module.exports = async function(deployer, network, accounts) {
    await deployer.deploy(TestTokenWithConstructor, '0x21fe40d9f008d6c43feff55061626960edf2f6dc')
}