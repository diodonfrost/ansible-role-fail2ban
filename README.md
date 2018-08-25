# fail2ban

[![Build Status](https://travis-ci.org/diodonfrost/ansible-role-fail2ban.svg?branch=master)](https://travis-ci.org/diodonfrost/ansible-role-fail2ban)

This role provide compliance for install and setup forwarding on your target host.

## Requirements

This role was developed using Ansible 2.4 Backwards compatibility is not guaranteed.
Use `ansible-galaxy install diodonfrost.fail2ban` to install the role on your system.

Supported platforms:

```yaml
- name: EL
  versions:
    - 6
    - 7
- name: Fedora
  versions:
    - 28
    - 27
    - 26
- name: Debian
  versions:
    - stretch
    - jessie
- name: Ubuntu
  versions:
    - bionic
    - artful
    - xenial
    - trusty
    - precise
```

## Role Variables

```yaml
# Set log level
fail2ban_log_level: "INFO"

# Define fail2ban log file
fail2ban_log_target: /var/log/fail2ban.log

# Fail2ban ban time
fail2ban_db_purge: "86400"
```

## Dependencies

None

## Example Playbook

This is a sample playbook file for deploying the Ansible Galaxy fail2ban role in a localhost and installing the open source version of fail2ban.

```yaml
---
- hosts: localhost
  become: true
  roles:
    - role: diodonfrost.fail2ban
```


## License

Apache 2

## Author Information

This role was created in 2018 by diodonfrost.
