node 'ionut.chml.ro' {
    include puppet
    include apache
}

node 'puppet.srv.ro'{
    include puppet
    include apache
    include ntp
    include memcached
}

