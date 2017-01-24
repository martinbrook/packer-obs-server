# packer-obs-server
create obs-server with packer for aws

##Install
Clone this repo and create a file to hold your AWS credentials

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
Add http(80), https(443) and repo(82) access to the security group for the instance.

##Tested

* Create Project
* Create Package
* Connect to build.opensuse.org
* Test package build against remote repo

##Known Issues and TODO

* configure with static IP
* needs Let's Encrypt cert 
* landing page on http:// references initial AWS public IP - only run setup script after packer run - boot.local
* repository references in GUI point to inital AWS public IP - only run setup script afer packer run - boot.local
* look at controlling the instance via terraform

