
class cron {
	cron { 'Cron Test':
	command => "/opt/puppetlabs/bin/puppet agent -t",
	hour => 4,
	}	
}
