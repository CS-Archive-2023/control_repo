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
                key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDdXkBtvfQDFbbn5gb2EyaA9ymTYOiLH4eYRZay2faD+wEZl8t5LRcbxooA4ktYRo3F+1gSt+twkgVA8r0qySdIU1xyKwlEx9g6BoDP/GIxIjPbze/E7H0EUkQvxDNWtF3tSGafL5HDkUt/538zWtoH6GpDOhyrFM9ZF0u6j4nYs2XGx/YYGNzCAp6D3xzbpv6HAuNVr1u5F7YG/NjMPuHsOZmLvQqTcJcRYez6rfeWaYRhMJzARlJcsCXxo8dJKlNeSBksfcfU3e4v5Qg6UdOY9rb0sw0PP67lA2nPWbk0TOYbAVfF9Cbbc9zg7+sLarEr/22Dw97kcuXTblpZHr6z',
        }
}        