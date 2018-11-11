# fail2ban

[![Ansible Galaxy](https://img.shields.io/badge/galaxy-diodonfrost.fail2ban-660198.svg)](https://galaxy.ansible.com/diodonfrost/fail2ban)
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
- name: OracleLinux
  versions:
    - 7
    - 6
- name: Amazon
  versions:
    - 2017.12
- name: opensuse
  versions:
    - 42.3
    - 13.2
- name: ArchLinux
  versions:
    - any
```

## Role Variables

```yaml
---
# defaults file for ansible-role-fail2ban

# Initialize fail2ban version template variable
jail_template: ""

# Set log level
fail2ban_log_level: ERROR

# Set log level info for fail2ban v0.8.x
fail2ban_log_level_v8: 3

# Define fail2ban log file
fail2ban_log_target: /var/log/fail2ban.log

# Fail2ban ban time
fail2ban_db_purge: 86400

jail_bantime: 600

jail_findtime: 600

# Set maximum client can retry
jail_maxretry: 5

# Specifies if jails should trust hostnames in logs
jail_usedns: warn

# Definie destination email
jail_dstmail: root@localhost

# Define sender email
jail_sendermail: root@localhost

# Enable ssh jail
jail_sshd: true

# Add custom fail2ban settings.
# Example:
# fail2ban_custom_options: |
#   [apache]
#   enabled  = {{ jail_apache_auth }}
#   port     = http,https
#   filter   = apache-auth
#   logpath  = /var/log/apache*/*error.log
#   maxretry = 6
#   
#   [apache-multiport]
#   enabled   = {{ jail_apache_badbots }}
#   port      = http,https
#   filter    = apache-auth
#   logpath   = /var/log/apache*/*error.log
#   maxretry  = 6
fail2ban_custom_options:
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
