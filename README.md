# ansible-role-amazon-inspector

[![Build Status](https://travis-ci.com/diodonfrost/ansible-role-amazon-inspector.svg?branch=master)](https://travis-ci.com/diodonfrost/ansible-role-amazon-inspector)
[![molecule](https://github.com/diodonfrost/ansible-role-amazon-inspector/workflows/molecule/badge.svg)](https://github.com/diodonfrost/ansible-role-amazon-inspector/actions)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-diodonfrost.amazon_inspector-660198.svg)](https://galaxy.ansible.com/diodonfrost/amazon_inspector)

This role provide a compliance for install amazon-inspector on your target host.

## Requirements

This role was developed using Ansible 2.5 Backwards compatibility is not guaranteed.
Use `ansible-galaxy install diodonfrost.amazon_inspector` to install the role on your system.

Supported platforms:

```yaml
- name: EL
  versions:
    - 7
    - 6
- name: Debian
  versions:
    - stretch
    - jessie
- name: Ubuntu
  versions:
    - bionic
    - xenial
    - trusty
- name: Amazon
  versions:
    - 2017.12
    - 2016.03
    - 2013.09
- name: Windows
  versions:
    - 2019
    - 2016
    - 2012R2
```

## Role Variables

This role does not have a variable

```yaml
---
# defaults file for ansible-role-amazon-inspector

inspector_dest_path: "{{ default_inspector_dest_path }}"

inspector_url_download: "{{ default_inspector_url_download }}"
```

## Dependencies

None

## Example Playbook

This is a sample playbook file for deploying the Ansible Galaxy 
role in a localhost and installing latest amazon-inspector version.

```yaml
---
- hosts: localhost
  become: true
  roles:
    - role: diodonfrost.amazon_inspector
```

## Local Testing

This project uses [Molecule](http://molecule.readthedocs.io/) to aid in the
development and testing.

To develop or test you'll need to have installed the following:

* Linux (e.g. [Ubuntu](http://www.ubuntu.com/))
* [Docker](https://www.docker.com/)
* [Python](https://www.python.org/) (including python-pip)
* [Ansible](https://www.ansible.com/)
* [Molecule](http://molecule.readthedocs.io/)
* [Vagrant](https://www.vagrantup.com/) (only for windows tests)
* [Virtualbox](https://www.virtualbox.org/) (only for windows tests)

### Testing with Docker

```shell
# Test role on CentOS 7
distribution=centos-7 molecule test

# Test role on Ubuntu 16.04
distribution=ubuntu-16.04 molecule test
```

### Testing with Virtualbox

```shell
# Test role on Windows 2k16
molecule test -s windows

# Test role on Windows 2k19
distribution=windows-2k19 molecule test -s windows
```

## License

Apache 2

## Author Information

This role was created in 2019 by diodonfrost.
