#!/bin/bash

yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum -y install terraform
yum -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl enable docker --now

terraform init

tar -czf yamlBackup.tgz yamlBackup