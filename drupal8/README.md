# Drupal Dockerized


##  Purpose

This tool is aimed to build a quick instance of Drupal8. 


## Used Components

The Drupal instance is based on Drupal Composer (https://github.com/drupal-composer/) which is used to get Drupal and Composer. The official docker mysql 5.6 is used in the database container.


## Dependencies

* git
* docker


## Some steps before

Make sure the script is executable:

```
git clone https://github.com/enoknoz/knockknock.git
cd knockknock
chmod a+x d8d
```

## Usage

! For the moment: <database_port> and <database_password> aren't really affecting.

It takes a while till composer has downloaded all dependencies. A folder called 'source' will be created where you will find the complete repo. Inside of the 'source' folder you can find a 'web' folder which contains the drupal instance.


### You need to create a database! Two options:

1. You have a database by hand, then use it's connection data 
2. With database container linked. To usee it enter a database name and "root" for the user. No passowrd yet working somehow!

### Spin up the environment:

``` ./d8d <database_port> <database_password> <drupal_instance_port>```


### Install Drupal 8

Open your browser and request 

```localhost:<drupal_port>/drupal/web```

... in order to install Drupal. 


###!!! At the moment the trip ends here: but at least you have a:

* Drupal instance which only needs to have enabled URL rewriting: access the container install it handy for the moment:
 ``` docker exec -it d8d-drupal8 bash ```

# Open issues

+ Resolve URL rewriting probs to enable clean URLs by default

# Rodamap

+ Harden the container
+ Fully controllable enviroment: one environment for all: instead of worked in dev...Ooooops problems now!
+ Integration of update mechanisms
+ Integration of backup mechanisms
+ Integrate with https://letsencrypt.org/ --> to secure connection by default



A KnockKnock one:)
