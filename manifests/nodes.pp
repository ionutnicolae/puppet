node 'ionut.chml.ro' {
    include puppet
}

node 'puppet.srv.ro'{
    include puppet
    include apache
}

