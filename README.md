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
      - all
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

# true if you want enable ssh ddos jail
jail_sshd_ddos: false

# true if you want enable ssh selinux jail
jail_selinux_ssh: false

# true if you want enable dropbear jail
jail_dropbear: false

# true if you want enable apache auth jail
jail_apache_auth: false

# true if you want enable apache badbots jail
jail_apache_badbots: false

# true if you want enable apache noscript jail
jail_apache_noscript: false

# true if you want enable apache overflox jail
jail_apache_overflow: false

# true if you want enable apache nohome jail
jail_apache_nohome: false

# true if you want enable apache botsearch jail
jail_apache_botsearch: false

# true if you want enable apache fake log jail
jail_apache_fakegoolebot: false

# true if you want enable apache mod_security jail
jail_apache_modsecurity: false

# true if you want enable apache shellshock jail
jail_apache_shellshock: false

# true if you want enable pam jail
jail_pam_generic: false

# true if you want enable asterisk jail
jail_asterisk: false

# true if you want enable xinetd jail
jail_xinetd_fail: false

# true if you want enable openhab jail
jail_openhab_auth: false

# true if you want enable nginx jail
jail_nginx: false

# true if you want enable php url jail
jail_php_url: false

# true if you want enable suhosin jail
jail_suhosin: false

# true if you want enable lighthttpd jail
jail_lighttpd: false

# true if you want enable roundcube jail
jail_roundcube: false

# true if you want enable openwebmail jail
jail_openwebmail: false

# true if you want enable horde jail
jail_horde: false

# true if you want enable groupoffice jail
jail_groupoffice: false

# true if you want enable sogo jail
jail_sogo: false

# true if you want enable tine20 jail
jail_tine20: false

# true if you want enable drupal jail
jail_drupal: false

# true if you want enable guacamole jail
jail_guacamole: false

# true if you want enable webmin jail
jail_webmin: false

# true if you want enable froxlor jail
jail_froxlor: false

# true if you want enable squid jail
jail_squid: false

# true if you want enable 3proxy jail
jail_3proxy: false

# true if you want enable proftpd jail
jail_proftpd: false

# true if you want enable pureftpd jail
jail_pureftpd: false

# true if you want enable gssftpd jail
jail_gssftpd: false

# true if you want enable wuftpd jail
jail_wuftpd: false

# true if you want enable vsftpd jail
jail_vsftpd: false

# true if you want enable assp jail
jail_assp: false

# true if you want enable smtp jail
jail_smtp: false

# true if you want enable postfix jail
jail_postfix: false

# true if you want enable sendmail jail
jail_sendmail: false

# true if you want enable qmail jail
jail_qmail: false

# true if you want enable dovecot jail
jail_dovecot: false

# true if you want enable sieve jail
jail_sieve: false

# true if you want enable pop3d jail
jail_pop3d: false

# true if you want enable exim jail
jail_exim: false

# true if you want enable mysql jail
jail_mysql: false

# true if you want enable named jail
jail_named: false

# true if you want enable recidive jail
jail_recidive: false

# true if you want enable counter strike jail
jail_counter_strike: false

# true if you want enable nagios jail
jail_nagios: false

# true if you want enable oracleims jail
jail_oracleims: false

# true if you want enable directadmin jail
jail_directadmin: false

# true if you want enable portsentry jail
jail_portsentry: false

# true if you want enable pass2allow ftp jail
jail_pass2allow_ftp: false

# true if you want enable murmur jail
jail_murmur: false

# true if you want enable screensharingd jail
jail_screensharingd: false

# true if you want enable haporxy jail
jail_haproxy_auth: false

# true if you want enable slapd jail
jail_slapd: false

# true if you want enable domino smtp jail
jail_domino_smtp: false

# true if you want enable stunnel jail
jail_stunnel: false

# true if you want enable ejavverd auth jail
jail_ejabberd_auth: false

# true if you want enable mongo auth jail
jail_mongo_auth: false

# true if you want enable perdition jail
jail_perdition: false

# true if you want enable squirremlmail jail
jail_squirrelmail: false

# true if you want enable uwimap jail
jail_uwimap_auth: false

# true if you want enable cyrus jail
jail_cyrus: false

# true if you want enable nsd jail
jail_nsd: false

# true if you want enable freeswitch jail
jail_freeswitch: false

# true if you want enable kerio jail
jail_kerio: false

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
