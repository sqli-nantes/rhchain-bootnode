# Bootnode for RHChain

## Requirments 

Tested with 
* Ubuntu 16.04
* macOS Sierra
* Geth 1.7

## Install 

1. Download and install Bootnode tool

    * On Ubuntu 16.04

        ```bash

        apt-get install -y --no-install-recommends software-properties-common
        add-apt-repository -y ppa:ethereum/ethereum
        apt-get update
        apt-get install -y --no-install-recommends bootnode

        ```
    * On macOS Sierra (via Homebrew)
 
        ```bash

        brew update
        brew upgrade
        brew tap ethereum/ethereum

        ```

        Update ethereum.rb file at `/usr/local/Homebrew/Library/Taps/ethereum/homebrew-ethereum`
        Add line `bin.install 'build/bin/bootnode'` in

        ```ruby
        def install
            ENV["GOROOT"] = "#{HOMEBREW_PREFIX}/opt/go/libexec"
            [...]
        end
        ```
        Then

        ```bash
        brew install ethereum
        ```

2. Create binaries folder

```bash
mkdir bin
```

3. Link bootnode to binaries folder

```bash
ln -s /usr/bin/bootnode ./bin
```

4. Generate bootnode private key (bootnode.priv)

```bash
./bin/bootnode -v5 -verbosity 9 -genkey "bootnode.priv"
```

5. Create bootnode public key file (bootnode.pub)

```bash
./bin/bootnode -v5 -nodekey bootnode.priv -writeaddress > bootnode.pub
```

## Start

```bash
./start.sh
```


