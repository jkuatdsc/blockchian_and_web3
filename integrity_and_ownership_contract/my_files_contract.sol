pragma solidity 0.8.18;

contract MyFile{
    struct FileDetails{
        uint timestamp;
        string me;
    }
    
    mapping (string => FileDetails) files;

    event logFileAddedStatus (bool status, uint timestamp, string me, string fileHash);

    //Storing the me(owner) of the file at the block timestamp
    function set(string me,string fileHash){
        //To check if the key exists, we check default value i.e all bits are 0
        if(files[fileHash].timestamp==0){
            files[fileHash]=FileDetails(block.timestamp,me);

            //Trigger an event for our frontend app to alert that the details of our file have been stored.
            logFileAddedStatus (true, block.timestamp, me, fileHash);
        } else {
            //Alert the frontend that the details of the file could not be stored because they exist.
            logFileAddedStatus (false, block.timestamp, me, fileHash);
        }
    }

    //Getting the file information
    function get(string fileHash) returns (uint timestamp, string me) {
        return (files[fileHash].timestamp, files[fileHash].me);
    }
}
