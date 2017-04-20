
node 'puppet' {
	notify { 'message1':
		message => "Hello",
	}
	package { 'puppet-lint':
                ensure => installed,
        }
}

node 'node1' {
	notify { 'Welcome to node1':
		message => "Hello node1"
	}
	user { 'user1':
		ensure => present,
		uid => 1001,
		password => '$6$RxCP7JUW$79DrxIXUYGNLF8DAF6CAy7HKsi3RiBF17xMIKvsXvTmQQGZmwLnFBKSsaoRCnVYNSCcfaWJ8agm9bg9ShYa6R/',
	}
       user { 'user2':
                ensure => present,
                uid => 1002,
                password => '$6$RxCP7JUW$79DrxIXUYGNLF8DAF6CAy7HKsi3RiBF17xMIKvsXvTmQQGZmwLnFBKSsaoRCnVYNSCcfaWJ8agm9bg9ShYa6R/',
	}
	package { 'puppet-lint':
		ensure => installed,
	}
}

node 'node2' {
	notify { 'Welcome to node2':
		message => "Hello node2"
	}
	user { 'user1':
                ensure => present,
                uid => 1001,
                password => '$6$RxCP7JUW$79DrxIXUYGNLF8DAF6CAy7HKsi3RiBF17xMIKvsXvTmQQGZmwLnFBKSsaoRCnVYNSCcfaWJ8agm9bg9ShYa6R/',
        }
       user { 'user2':
                ensure => present,
                uid => 1002,
                password => '$6$RxCP7JUW$79DrxIXUYGNLF8DAF6CAy7HKsi3RiBF17xMIKvsXvTmQQGZmwLnFBKSsaoRCnVYNSCcfaWJ8agm9bg9ShYa6R/',
        }
	package { 'puppet-lint':
                ensure => installed,
        }


}
