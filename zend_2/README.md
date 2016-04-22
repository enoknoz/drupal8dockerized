# Zend 2 Dockerized

##  Purpose
Build a quick instance of Zend 2 framework. This script sets up Zend 2 framework inside a docker container. The Zend code itself is downloaded into a folder on your native system. This folder then is mounted into the web-root inside the container. It enables you to develop your application on a native system in an IDE or similar and run it isolated inside a docker container.

## Used Components
* composer
* Zend 2 Framework - https://github.com/zendframework/zf2 

## Server stack
* apache2
* libapache2-mod-php5
* php5
* php5-mysql
* mysql-server

## Requirements
You need to have installed the following tools:
* git
* docker
* php5.4
* port 80 needs to be free

## Operating systems
Tested on ubuntu 14.04, should work for any linux with *bash* which supports docker

## Installation
Make sure the script is executable:
```
cd knockknock/zend_2
chmod a+x zend_2
```
Run the script: ```./zend_2 <port> <container-name>``` then edit your local hosts file ```vim /etc/hosts``` and add **zend.local**. Finally open your browser and request: **zend.local**

## Code folder
Zend is downloaded in a folder called **knockknock/zend_2/zend**. 

## Database
The container has a database which contains the **root** user. No password needed.

## Example files
If you need a database connection in you Zend application you can find a example config inside the **example_confs** folder.


**KnockKnock**
