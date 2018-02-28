class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service {'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user => 'root',
                type => 'ssh-rsa',
                key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCv+fFJYmn8zJGCIqyLOKdmlOJxBLEXlL2GyoRHBsMe4OgdIrkq6b+ZnTfaijG+IfGmAgSv/ExkJe9cqCncsE1Qsv1LzsFT+PQBY99gyUb53pBO5zNdACK75ZOEEvwwn4T/VS4F5s9xGqRK/mZWDypUd5BKwNPcDkFwOPIXga847cqPkiRxKaib9Eo7+ZJpWzoxu0uX/UBnvy1Ob+9JV82CfNIvqGW68Qxbh2eS06p7S59MwhB3ZVUPPobr5rBn4EALC1rOru4F1KU0lC3A0CjgSEd6xDfzAgiD3oDPkyaISgOTLqz7c8Bcyl2mmWvPd5LAwhZ69ATqpzSlx9EcEMih',
        }
}        