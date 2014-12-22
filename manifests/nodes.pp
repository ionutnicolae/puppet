node "puppet.srv.ro" {
    file { '/tmp/hello':
	content => "Hello, world\n",
	}
}