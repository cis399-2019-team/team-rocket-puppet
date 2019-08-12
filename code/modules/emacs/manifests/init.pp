class emacs {
	package { "emacs":
		ensure   => installed,
		provider => apt, 
	}
}
