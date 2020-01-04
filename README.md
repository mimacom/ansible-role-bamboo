# Ansible Role: bamboo

[![Build Status](https://travis-ci.org/mimacom/ansible-role-bamboo.svg?branch=master)](https://travis-ci.org/mimacom/ansible-role-bamboo)

Installs Atlassian Bamboo on Linux servers. This role will install OpenJDK by default.

## Requirements

None.


## Role Variables

Available variables are listed below, along with default values (see
`defaults/main.yml`):

    bamboo_master_version: 6.10.4

Specify Bamboo version to install

    bamboo_master_fqdn: ""

Set tomcat proxy FQDN

    bamboo_master_https: False

Set tomcat proxy protocol

    bamboo_master_port: ""

Set tomcat proxy port

    bamboo_master_include_jdk: True

Set False to disable OpenJDK installation.

    bamboo_master_openjdk_version: 1.8.0

Which OpenJDK to install for running Bamboo. Check Bamboo's supported platforms and adjust this variable if necessary.

    bamboo_master_user: bamboo

Name of the user under which the service will run

    bamboo_master_application_folder: "/opt/atlassian/bamboo"

Path where to install the application

    bamboo_master_data_folder: "/var/atlassian/application-data/bamboo"

Path where application data will be stored

    bamboo_master_jvm_memory: 1g

Java VM heap size

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
used. You should delete them manually.

Please do a proper backup prior upgrading, as the Bamboo data will not
work with older versions. If you set a lower version than installed, the
role will fail.

The current version is saved as ansible fact in /etc/ansible/facts.d/

## License

Apache License 2.0

## Author Information

This role was created by [Remo Wenger](http://www.remowenger.ch).
