#ssh key & cron@10min for puppet
class puppet {
    file { '/usr/local/bin/papply':
        source => 'puppet:///modules/puppet/papply.sh',
        mode   => '0755',
    }
    file { '/usr/local/bin/pull-updates':
        source => 'puppet:///modules/puppet/pull-updates.sh',
        mode   => '0755',
    }
    file { '/root/.ssh/id_rsa':
        source => 'puppet:///modules/puppet/root.priv',
        owner  => 'root',
        mode   => '0600',
    }

    cron { 'run-puppet':
        ensure  => 'present',
        user    => 'root',
        command => '/usr/local/bin/pull-updates',
        minute  => '*/10',
        hour    => '*',
    }

    package { 'puppet-lint':
        ensure   => '1.1.0',
        provider => 'gem',
    }
    if ($::operatingsystem == 'CentOS') and (($::architecture == 'x86_64') or ($::architecture == 'i386')) {
        notify { "Sistemul de operare este CentOS $::architecture": }
    }
}