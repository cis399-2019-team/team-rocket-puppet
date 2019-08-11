node ip-10-0-4-206 {
	include puppet
	include sshd
	include apache2
	include user
	include emacs
}
node ip-10-0-4-128 {
	include puppet
	include sshd
	include apache2
	include user
	include emacs
}
