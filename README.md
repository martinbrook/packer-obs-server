# packer-obs-server
create obs-server with packer for aws

##Install
Create a file to hold your AWS credentials

eg variables.json
~~~~
{
  "aws_access_key": "your key",
  "aws_secret_key": "your secret"
}
~~~~

##Create Ami

`packer build -var-file=variables.json obs-server.json`

##Launch Instance
Add http and https access to the security settings for the instance. Look at controlling instance via terraform

##Tested

* Create Project
* Create Package
* Connect to build.opensuse.org
* Test package build against remote repo

##Known Issues and TODO

* configure with static IP
* needs Let's Encrypt cert 
* landing page on http:// references initial AWS public IP
* repository references in GUI point to inital AWS public IP


