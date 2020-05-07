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
    - 8
    - 7
    - 6
- name: Fedora
  versions:
    - 31
    - 30
    - 29
    - 28
    - 27
    - 26
- name: Debian
  versions:
    - buster
    - stretch
    - jessie
- name: Ubuntu
  versions:
    - disco dingo
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

The preferred way of testing the role is to use amazon ec2. You will have to configure Docker on your system.

 You will need access to an AWS account. IAM users should have, at a minimum, permission to manage the lifecycle of an EC2 instance along with modifying components specified in kitchen driver configs. Consider using a permissive managed IAM policy like arn:aws:iam::aws:policy/AmazonEC2FullAccess or tailor one specific to your security requirements.

Next install test-kitchen:

```shell
# Install dependencies
gem install bundler
bundle install
```

### Testing with kitchen-ec2

```shell
# List all tests with kitchen
kitchen list

# fast test on one machine
kitchen test default-centos-7

# test on all machines
kitchen test

# for development, create environment
kitchen create default-centos-7

# Apply ansible playbook
kitchen converge default-centos-7

# Apply inspec tests
kitchen verify default-centos-7
```

## License

Apache 2

## Author Information

This role was created in 2019 by diodonfrost.
