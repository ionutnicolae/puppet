class apache {
    
    package { [ 'httpd' ]:
	ensure => latest,
	allow_virtual => false,
	
    }


    service { "httpd":
	ensure => running,
	hasstatus => true,
	hasrestart => true,
	enable => true,
	require => Package ['httpd'],
    }

}