
class subnew {
	file { "/root/subnew":
	ensure => present,
	content => "I am from subnew",
	}
}
