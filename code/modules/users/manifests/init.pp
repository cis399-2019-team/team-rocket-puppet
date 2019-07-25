class user {
	user{"stevev":
	ensure	=> present,
	home	=> "/home/stevev",
	managehome	=> true
	}
}