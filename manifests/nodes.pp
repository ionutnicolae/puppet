node 'ionut.chml.ro' {
    include puppet
    include apache
}

node 'puppet.srv.ro'{
    include puppet
    include apache
    if ($::operatingsystem == 'CentOS') and (($::architecture == 'x86_64') or ($::architecture == 'i386')) {
        notify { "Sistemul de operare este CentOS $::architecture": }
    }
}

