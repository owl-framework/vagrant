Owl Vagrant Development Box
===========================

[![Author](http://img.shields.io/badge/author-@ovr-blue.svg?style=flat-square)](https://twitter.com/ovrweb)
[![Software License](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](LICENSE.md)

> Perfect way to start you new project on Owl framework.

Software:

* PHP 5.6 (+default+json+memcache+fpm+curl)
* [Nginx](http://nginx.org/) (Web server)
* [Zephir Language](https://github.com/phalcon/zephir) (Compiled high level language aimed to the creation of C-extensions for PHP)
* [Owl 2](https://github.com/owl-framework/owl) (Owl Framework for PHP on Zephir)
* [Lynx](https://github.com/lynx/lynx) (ORM/DBAL for PHP on Zephir)
* [Composer](https://getcomposer.org/) (Dependency Manager for PHP)

For frontend:

* NodeJS with NPM
* Bower (global env)
* Gulp (global env)
* Grunt-cli (global env)

Default vm parameters:

```yaml
name: phalcon2-dev
hostname: vm.local
box: ubuntu/trusty64
provider: virtualbox
gui: false
ram: 512
cpus: 1
ip: 10.10.10.150
projects-folder: "~/projects"
```

## Pre-installed projects

* [Phalcon Full Skeleton Edition](https://github.com/ovr/phalcon-module-skeleton) on [http://phalcon-module.local/](http://phalcon-module.local/)
* [Angular Skeleton](https://github.com/ovr/angular-skeleton) on [http://angular-skeleton.local/](http://angular-skeleton.local/)


Will be soon !!!

* [Phalcon Rest Edition](https://github.com/ovr/phalcon-rest-edition) on [http://phalcon-rest.local/](http://phalcon-rest.local/)
* [Phalcon Rest Lynx Edition](https://github.com/ovr/phalcon-lynx-rest-edition) on [http://phalcon-lynx-rest.local/](http://phalcon-lynx-rest.local/)

## Getting Started

1. Download and install [VirtualBox](https://www.virtualbox.org/)
2. Download and install [Vagrant](http://www.vagrantup.com/)
3. Install project

Don't forget to install vagrant host manager plugin:

```bash
vagrant plugin install vagrant-hostmanager
```

and vagrant cachier (to cache shared packages installation):

```bash
vagrant plugin install vagrant-cachier
```

## Installation

```bash
git clone https://github.com/ovr/perfect-php-vagrant.git
cd perfect-php-vagrant
nano config.yaml
vagrant up
```

Weight when installation will be finished and open `http://servername/` to see info about server

## Troubleshooting

If after `vagrant up` you are getting something like it:

```sh
...
default: Warning: Connection timeout. Retrying...
default: Warning: Connection timeout. Retrying...
default: Warning: Connection timeout. Retrying...
```

You need to diagnose an error by setuping GUI to true in `config.yaml`

```yaml
  gui: true
```


## Vagrant

To stop and reinstall machine please run

```bash
vagrant halt && vagrant destroy -f && vagrant up
```

License
-------

This project is open-sourced software licensed under the MIT License. See the LICENSE file for more information.
