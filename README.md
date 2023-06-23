# Install Pgweb in Debian Linux

This repository is dedicated to the installation of Pgweb in a Debian-based OS.  Pgweb is used for viewing PostgreSQL databases.

## Prerequisites
* The scripts in this repository are geared for a Debian Linux setup.
* Git should be installed in your Debian installation.  If you have not installed Git, you can install it by entering the following command in the terminal:
```
sudo apt-get update; sudo apt-get -y install git
```

## Procedure
Enter the following commands in the terminal:
```
git clone https://github.com/rubyonracetracks/pgweb-debian-install.git
cd pgweb-debian-install
bash main.sh
```
Just enter the command ```bash main.sh```.

## What's wrong with pgAdmin 3?
It's obsolete and does not support any version of PostgreSQL beyond version 9.

## What's wrong with pgAdmin 4?
It's much more difficult to install than pgAdmin 3.

## Why do you like Pgweb?
It's free, open source, and easy to install and use.
