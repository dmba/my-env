My Working Environment
=========

Ansible provisioning of my working environment for macOS and Ubuntu

Usage
------------

Install Ansible : [How to install Ansible](http://docs.ansible.com/intro_installation.html).
```sh
curl -s https://raw.githubusercontent.com/dmba/my-env/master/checkout-and-install.sh | bash
```
Testing
------------
Install Vagrant : [How to install Vagrant](https://www.vagrantup.com/downloads.html)

- macOS Virtual Machine
```sh
cd ~/.my-env/tests
export VM_BOX='jhcook/macos-sierra'
vagrant up
```
- ubuntu 16.04  Virtual Machine
```sh
cd ~/.my-env/tests
export VM_BOX='bento/ubuntu-16.04'
vagrant up
```

Run provision again:
```sh
vagrant provision
```

Connect to Virtual Machine
```sh
vagrant ssh
```

License
-------

MIT
