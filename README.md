# ansible-role-amazon-inspector

[![Build Status](https://travis-ci.com/diodonfrost/ansible-role-amazon-inspector.svg?branch=master)](https://travis-ci.com/diodonfrost/ansible-role-amazon-inspector)
[![CI](https://github.com/diodonfrost/ansible-role-amazon-inspector/workflows/CI/badge.svg)](https://github.com/diodonfrost/ansible-role-amazon-inspector/actions)
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
```

## Role Variables

This role does not have a variable

```yaml
---
# defaults file for ansible-role-amazon-inspector

# Url where download aws inspector agent
inspector_url_download: https://inspector-agent.amazonaws.com/linux/latest/install
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

The preferred way of locally testing the role is to use Docker. You will have to install Docker on your system.

### Testing with Docker

```shell
# Test role on CentOS 7
distribution=centos-7 molecule test

# Test role on Ubuntu 16.04
distribution=ubuntu-16.04 molecule test
```

## License

Apache 2

## Author Information

This role was created in 2019 by diodonfrost.
