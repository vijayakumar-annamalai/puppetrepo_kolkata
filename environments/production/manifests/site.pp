
node default {
	include	facter
	include ssh
	include cron
	include files
	include fqdn
	include sub
	include nginx

}
