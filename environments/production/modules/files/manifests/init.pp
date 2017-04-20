
class files {
	$variable1 = ['/root/file1','/root/file2']
	file { $variable1:
	ensure => present,
	content => "Accenure Network\n", 
	}
}
