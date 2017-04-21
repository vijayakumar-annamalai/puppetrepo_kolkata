
class sub::sub1::two {
	file { "/root/subtwo":
	ensure => present,
	content => "From sub two",
	}
}
