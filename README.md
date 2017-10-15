# Ansible Role: bamboo

[![Build Status](https://img.shields.io/travis/mimacom/ansible-role-bamboo.svg)](https://travis-ci.org/mimacom/ansible-role-bamboo)

Installs Atlassian Bamboo server for CentOS linux serves.

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

## License

Apache License 2.0

## Author Information

This role was created by [Remo Wenger](http://www.remowenger.ch).
