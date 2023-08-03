PRIVATE_KEY="0xfffdbb37105441e14b0ee6330d855d8504ff39e705c3afa8f859ac9865f99306"
echo $PRIVATE_KEY

# forge script script/Counter.s.sol:CounterScript \
# --rpc-url http://localhost:8545 --private-key $PRIVATE_KEY --broadcast

# need to update the contract address with above result;

export CONTRACT_ADDRESS="0x18Df82C7E422A42D47345Ed86B0E935E9718eBda" 

cast send $CONTRACT_ADDRESS "incrementCounter()" \
--rpc-url http://localhost:8545 --private-key $PRIVATE_KEY 

cast call $CONTRACT_ADDRESS "getCount()(int)" --rpc-url http://localhost:8545

