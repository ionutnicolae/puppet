class puppet {
    file { '/usr/local/bin/papply':
	sourse => 'puppet:///modules/puppet/papply.sh',
	mode => '0755',
	}
}