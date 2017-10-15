# Ansible Role: bamboo

[![Build Status](https://img.shields.io/travis/mimacom/ansible-role-bamboo.svg)](https://travis-ci.org/mimacom/ansible-role-bamboo)

Installs Atlassian Bamboo server for CentOS linux servers.

## Requirements

None.


## Role Variables


    bamboo_master:
      # Specify Bamboo version to install
      version: 6.2.1

      # Set tomcat proxy FQDN
      fqdn: ""

      # Set tomcat proxy protocol
      https: False

      # Set tomcat proxy port
      port: ""

## Dependencies

None.

## Example Playbook

This installs Bamboo and tells tomcat to expect a specific vHost and an
HTTPS connection (proxy settings).

    - hosts: servers
      become: yes
      roles:
        - role: mimacom.bamboo
          bamboo_master:
            version: 6.2.1

## Upgrade Bamboo

To upgrade Bamboo, simply change the version variable to a higher
version number. Old binary versions will be preserved but not further
used. Delete it by yourself.

Please do a proper backup prior upgrading, as the Bamboo data will not
work with older versions. If you set a lower version than installed, the
role will fail.

The current version is saved as ansible fact in /etc/ansible/facts.d/

## License

Apache License 2.0

## Author Information

This role was created by [Remo Wenger](http://www.remowenger.ch).
