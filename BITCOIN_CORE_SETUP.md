# Preparing Bitcoin develpment environment

Here we will set up Bitcoin's first implementation also known as Bitcoin Core or the Satoshi Client. 
This is the reference implementations of the bitcoin system. It should mostly be used as a reference, application developers to check for 
BIP (Bitcoin Improvement Proposals) for production softwares. i.e BIP-39 for wallet softwares. 

## Compiling bitcoin core from source code 

Download(as a zip file) or clone bitcoin source code from github. Here I am going to clone it: 

``` $ git clone https://github.com/bitcoin/bitcoin.git ``` 

Change to the bitcoin directory. 

``` $ cd bitcoin ```

Check the releases. 

``` $ git tag ```

Select last stable release(latest release without prefix rc). Version v24.0.1 as of the time I'm writing
Ones with prefix rc are for testing purporses. 

``` $ git checkout v24.0.1 ``` 

This should set the head of the branch to this release. To affirm this, you can confirm via... 

``` $ git status ``` 

### Configuring bitcoin core build

You can check the general review of the documentation of the bitcoin core system as shown. 

``` $ more README.md ```

Review documentation for compiling bitcoind commandline client. 

``` $ more doc/build-unix.md ```

Go through installation prerequisites, then start building process via generating build scripts as shown below.

``` $ ./autogen.sh ``` 

We can check the configuration options with command.

``` $ ./configure --help ```

We can then configure using the configurations above. Some simple configurations to start with. 
 
 ```
 $ ./configure --prefix=$HOME

 $ ./configure --disable-wallet

 $ ./configure --with-incomplete-bdb

 $ ./configure --with-gui=no
 
 ```

 We are now set to compile bitcoind. 

 ### Building core executables. 

 ``` $ make ```

Takes some time. If done, Bitcoin core is now compiled. 
We can now install various executables in our system next using, 

```
$ sudo make install 

```

## Running the core node 

```
$ bitciond 

```
