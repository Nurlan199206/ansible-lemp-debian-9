# nginx-php-fpm installation on Debian 9

You need minimum 1GB RAM for succesfully run playbook.

Software version.

Ansible 2.0.0.2

Centos 6/7

Debian 9

php 7.0/7.1/7.2/7.3

nginx 1.10

mysql  Ver 14.14 Distrib 5.7.25

run command: 

yum install git ansible mc python2-PyMySQL -y

or

apt update && apt install git ansible mc -y
mkdir /etc/ansible/roles

for Debian like distros

git clone https://github.com/Nurlan199206/ansible-lemp-debian-9

and

ansible-playbook --connection=local -s /etc/ansible/roles/ansible-lemp-debian-9/nginx.yml



for successfully run playbook, dont forget add in /etc/ansible/ansible.cfg after [defaults]

invalid_task_attribute_failed=False

#############Ansible latest version for Debian 9#########################

Debian users may leverage the same source as the Ubuntu PPA.

Add the following line to /etc/apt/sources.list:

deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main
Then run these commands:

$ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
$ sudo apt-get update
$ sudo apt-get install ansible
