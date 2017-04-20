
class case {
	case $ipaddress {
	192.168.56.101:{ $ssh_name = 'sshd'}
	192.168.56.102:{ $ssh_name = 'ssh'}
	'default':{
		notify {
		message => "
}
