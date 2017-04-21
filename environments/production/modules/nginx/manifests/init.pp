
class nginx ($env1 = "test") {
	file { '/usr/share/nginx/html/index.html':
		ensure => present,
		content => template('nginx/index.html.erb'),
		notify => Service['nginx'],
	}
	service { 'nginx':
		ensure => running,
		enable => true,
		require => Package['nginx'],
	}
	package { 'nginx':
		ensure => installed,
	}
}
