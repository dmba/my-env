My Working Environment
=========

Ansible provisioning of my working environment for macOS and Ubuntu

Usage
------------

Install ansible : [How to install ansible](http://docs.ansible.com/intro_installation.html).
```sh
git clone git://github.com/dmba/my-env ~/.my-env
cd ~/.my-env
ansible-playbook -i hosts provision.yml --ask-sudo-pass
```
Testing
------------
Install vagrant : [How to install vagrant](https://www.vagrantup.com/downloads.html)

- macOS
```sh
cd ~/.my-env/tests
export VM_BOX='jhcook/macos-sierra'
vagrant up
```
- ubuntu 16.04
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
