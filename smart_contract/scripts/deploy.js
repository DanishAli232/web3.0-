//main is responsible for deploying our contract

const { TransactionDescription } = require("ethers/lib/utils");

// when we run this script all transaction all going to deploy and then we get a address of our smartcontract to deployed on a blockchain network....
//but our contract to be deployed we need a etherium on our wallet already everything we do on etherium network required etherium gas which is small fraction of etherium used to make something happen

const main = async() => {
    // this is a like a function factory and class that generate instances of that specific contract
    const transactionsFactory = await hre.ethers.getContractFactory(
        "Transactions"
    );

    const transactionsContract = await transactionsFactory.deploy();

    await transactionsContract.deployed();

    console.log("Transactions address: ", transactionsContract.address);
};

const runMain = async() => {
    try {
        await main();
        // which means that process went successfull
        process.exit(0);
    } catch (error) {
        console.error(error);
        process.exit(1);
    }
};

runMain();

// we deploy this by following command

//npx hardhat run scripts/deploy.js --network goerli

// after this will deploy this will give us the address of deploy contract and copy the address and go to client side application go to the src and create folder and file constant.js

// the other thing generated is transaction.json this called an abi and abi is a contract application binary interface that is standard way to interact with contract in the etherium system
// Transactions.json that in artifacts/contracts/transaction floder contain all the information about our specific contract and we this file and copy into client util folder

// if we deploy then gas fee also consume