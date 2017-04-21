
node default {
}
node 'node2' {
	class { 'nginx':
		env1 => DEVELOPMENT,
	}
}
