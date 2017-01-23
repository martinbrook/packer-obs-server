# packer-obs-server
create obs-server with packer for aws

##Install
Create a file to hold your AWS credentials

eg variables.json

{
  "aws_access_key": "your key",
  "aws_secret_key": "your secret"
}

##Create ami

packer build -var-file=variables.json obs-server.json

##Launch instance
Add http and https access to the security settings for the instance.

##Tested

Create Project
Create Package
Connect to build.opensuse.org
Test package build against remote repo

##known issues

landing page on http:// references initial AWS public IP
repository references in GUI point to inital AWS public IP


