
class facter {
	exec { 'facter':
	cwd => '/var/tmp',
	command => "/opt/puppetlabs/bin/facter > mylab.txt", 
	}
}

	
