
class sub::one {
	file { "/root/subone":
	ensure => present,
	content => "From sub one",
	}
}
