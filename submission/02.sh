# Create a native segwit address and get the public key from the address.
address=$(bitcoin-cli -regtest getnewaddress "" "bech32")
bitcoin-cli -regtest getaddressinfo "$address" | jq -r .pubkey