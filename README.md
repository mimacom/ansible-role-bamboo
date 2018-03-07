# Ansible Role: bamboo

[![Build Status](https://img.shields.io/travis/mimacom/ansible-role-bamboo.svg)](https://travis-ci.org/mimacom/ansible-role-bamboo)

Installs Atlassian Bamboo server for CentOS linux servers. This role
will install OpenJDK 8 aswell.

## Requirements

None.


## Role Variables


    bamboo_master:
      # Specify Bamboo version to install
      version: 6.4.0

      # Set tomcat proxy FQDN
      fqdn: ""

      # Set tomcat proxy protocol
      https: False

      # Set tomcat proxy port
      port: ""

    # Check Bamboo's supported platforms and adjust this variable if
    # necessary
    openjdk_version: 1.8.0

    # Service user
    bamboo_master_user: bamboo

    # Application / binary folder
    bamboo_master_application_folder: "/opt/atlassian/bamboo"

    # Bamboo data folder
    bamboo_master_data_folder: "/var/atlassian/application-data/bamboo"

    # JVM max and min memory space
    bamboo_master_jvm_memory: 1g

    # Set False to disable inclusion of cron package and cron tasks
    bamboo_include_cron: True

    # Set False to disable OpenJDK inclusion
    bamboo_include_jdk: True


## Dependencies

None.

## Example Playbook

This installs Bamboo and tells tomcat to expect a specific vHost and an
HTTPS connection (proxy settings).

    - hosts: servers
      become: yes
      roles:
        - role: mimacom.bamboo

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
