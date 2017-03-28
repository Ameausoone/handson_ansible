FROM ansible/centos7-ansible

WORKDIR /playbook

RUN yum install -y sshpass nc && yum clean all -y

RUN pip install zabbix-api

VOLUME /playbook
