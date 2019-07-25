class user {

	user{"stevev":
	ensure	=> present,
	home	=> "/home/stevev",
	managehome	=> true
	}

	ssh_authorized_key{"stevev_rsa":
	user	=>	"stevev"
	type	=>	"ssh-rsa"
	key     =>	"AAAAC3NzaC1lZDI1NTE5AAAAILBL3wWzbtQXl6V3saF13p5TM1mdhyrYQZYOqTLw2RT8"
	}
}