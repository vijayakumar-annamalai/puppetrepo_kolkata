
class fqdn {
	$newvar = $fqdn ? { 'puppet' => 'puppetmaster', 'node1' => 'client1', default => 'none',}
	if $::fqdn == 'puppet' {	
		file { "/root/${fqdn}":
		ensure => present,
		content => " I am created on host - ${fqdn} ",
		}
	}
	elsif $fqdn == 'node1' {
		file { "/root/${fqdn}":
		ensure => present,
		content => " I am create on host - ${newvar} ",
		}
	}
	else {
		notify { 'Error':
		message => "None of the hosts are matched the conditions",
		}
	}
}
			
