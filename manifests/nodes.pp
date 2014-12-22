node "puppet.srv.ro", "ionut.chml.ro" {
    file { '/tmp/hello':
	content => "Hello, world\n",
	}
}