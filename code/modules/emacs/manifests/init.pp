class emacs {
	package { "emacs":
		ensure   => installed,
		provider => apt, 
	}
	
	file {"/etc/emacs/site-start.d/00debian-vars.el":
		ensure  => present,
		mode    => '444',
		owner   => 'root',
		group   => 'root', 
		source  => "puppet:///modules/emacs/00debian-vars.el",
		require => Package["emacs"],
	}
	service { "emacs": 
		subscribe => File["/etc/emacs/site-start.d/00debian-vars.el"],
		ensure    => "running",
		enable    => "true",
	}
}
