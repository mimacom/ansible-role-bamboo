# Ansible Role: bamboo

[![Build Status](https://img.shields.io/travis/mimacom/ansible-role-bamboo.svg)](https://travis-ci.org/mimacom/ansible-role-bamboo)

Installs Atlassian Bamboo server for CentOS linux serves.

## Requirements

None.


## Role Variables


    # Set Bamboo version
    bamboo_master:
      version: 6.2.1

## Dependencies

None.

## Example Playbook

This installs Bamboo and tells tomcat to except a specific vHost and an
HTTPS connection (proxy settings).

    - hosts: servers
      become: yes
      roles:
        - role: mimacom.bamboo
          bamboo_master:
            version: 6.2.1
            fqdn: "bamboo.example.invalid"
            https: True
            port: 443

## License

Apache License 2.0

## Author Information

This role was created by [Remo Wenger](http://www.remowenger.ch).
