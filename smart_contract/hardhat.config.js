// it is the plugin to build smart contract test
require("@nomiclabs/hardhat-waffle");
module.exports = {
    solidity: "0.8.0",
    // network url is come from alchemy if you dont understand go to video 1:30:38
    networks: {
        goerli: {
            url: "https://eth-goerli.g.alchemy.com/v2/OzNh_qRDUTYNwHVsiF6KHf9rz-Uu_U0c",
            // account is the private key of metamask
            accounts: [
                "f1b9ea63464ac07f94089c8d7b0a9e6ba68e8b3f6facc3eeccd4f25cf335712e",
            ],
        },
    },
};