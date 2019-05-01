## What it is ##
This is a boilerplate for developing PHP applications based on Laravel Framework. 

Package includes Laravel Homestead v.8.4, fresh install of Laravel Framework v.5.8.15 (with removed frontend scaffolding) and playbooks for Ansible provisioning.
By default uses PHP v.7.3, Mysql v.8, this can be changed in your Homestead.yaml file.  

## Setup steps (tested on Widows 10) ##

1) Make sure you have installed latest versions of Vagrant and Virtualbox. Also PHP and Composer needs to be installed already on your host machine. 

2) Run `composer install` (`The root directory`, not the `www`. PHP 7.1+) to install Homestead dependencies.

3) Create copy of `example.Homestead.yaml` file as `Homestead.yaml` and fill it as needed.

4) Run `./vendor/bin/homestead make`.

5) Create copy of `example.settings.yaml` file (`local_playbooks` directory) as `settings.yaml` and fill it as needed.

6) Add new `IP and local domain` to your hosts file (`C:\Windows\System32\drivers\etc\hosts`).
    
7) Run `vagrant up`.

8) `vagrant reload --provision` - if you want to change your hosts settings

9) To login via ssh simply type `vagrant ssh`

### In case of errors with Vagrant ###
1) Install latest versions of Vagrant and Virtualbox

2) Do `vagrant plugin expunge --reinstall`

3) If complaining about vagrant-vbguest or shared folders, you can try to do:

`vagrant plugin install vagrant-vbguest
vagrant vbguest`
