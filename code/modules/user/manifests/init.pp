class user {

	user{"stevev":
	ensure	=> present,
	home	=> "/home/stevev",
	managehome	=> true,
	}

	user{"jerry":
	ensure	=> present,
	home	=> "/home/jerry",
	managehome	=> true,
	}

	user{"mapu":
	ensure	=> present,
	home	=> "/home/mapu",
	managehome	=> true,
	}

	user{"keir":
	ensure	=> present,
	home	=> "/home/keir",
	managehome	=> true,
	}

	user{"henzi":
	ensure	=> present,
	home	=> "/home/henzi",
	managehome	=> true,
	}

	user{"austin":
	ensure	=> present,
	home	=> "/home/austin",
	managehome	=> true,
	}

	user{"rico":
	ensure	=> present,
	home	=> "/home/rico",
	managehome	=> true,
	}

	user{"kylie":
	ensure	=> present,
	home	=> "/home/kylie",
	managehome	=> true,
	}

	user{"devin":
	ensure	=> present,
	home	=> "/home/devin",
	managehome	=> true,
	}

	user{"lucas":
	ensure	=> present,
	home	=> "/home/lucas",
	managehome	=> true,
	}

	ssh_authorized_key{"stevev_ed25519":
	user	=>	"stevev",
	type	=>	"ssh-ed25519",
	key     =>	"AAAAC3NzaC1lZDI1NTE5AAAAILBL3wWzbtQXl6V3saF13p5TM1mdhyrYQZYOqTLw2RT8",
	}

	ssh_authorized_key{"jerry_rsa":
	user	=>	"jerry",
	type	=>	"ssh-rsa",
	key     =>	"AAAAB3NzaC1yc2EAAAADAQABAAACAQC1UoDoKsyxL2O6Ugw2WUr7FxupWnuDI7r23sDCoGQHWW60BzHJUR1ZqTk+qdqA7UuInHj/rn6jSoEV2N/jw/cMNb3GKF9cpVnHnXXnf0dwBtKEH0J4IHD/koZZqc88iUqb9fMZ8YlOSDrIakwAuryFK8bhgDmWqZOGZlPZn9WYkMuLIY4ICwqpr3Snes25N1Mac4hKHY3Y8jTsQLQUm478Kx+m4jnpt85Ymfbvzf6LrleNzNppFwA3mWPcpa9T4qhnlpx789k71j5MboAmK5fUQeFxwwcV04/MO8zcZhjqpYAo7noLh6KopwErDYni6LEkNxwOJvjHZIa1dLKJ1jwSodvjDJV2+tDpppdLWD4XSnA21cZq2BD2Sx0uifv9N8TlAbGcvQasJOMiNXfJ3M6m2UQWMMQ3HlXviko7NzNj925CHz+rBIlVhJmt5d6NsvpIiI8D/hQC0ugclLVDZ6jHrCBu9MdB60cZEbzXP6+h9xltapmw5ikF05SuvKP7Mskor5twLoyq59NQi2iTcFzkQOLDzNzi557EquEQNC4yxzdNr9ZmtepVu2fOuY+djq+UKXp9KuLsAfC6sfjBckb5uZCFYEw+LYZMYJwduyPMIUuP/09ffNWzfptYNa2tZ1FPRtcm9GdjlsCufFoXir3cee25T329HTLcPIfxFKx5GQ==",
	}

	ssh_authorized_key{"mapu_rsa":
	user	=>	"mapu",
	type	=>	"ssh-rsa",
	key     =>	"AAAAB3NzaC1yc2EAAAADAQABAAABAQDHfT9V5ERJ9sGiPwqijec52HiaEKxKoPuW2ehz8Te2g/cBAHWi8jQz8X+KvEb/Nqmv0Q29N1WkUWzGAjjRQP9Cyhe5NN2DVTD5FjX9W8YFoMxHBIBAvK68I1PTSYrkh7A6UtfsRx0bxg/uEfjRzstU+D0mg7T+x6ysuMjs6+HVXVNAj+Qr0NAkaMnMoYFlUP62/jCyiH8xliyW4pk65tNbLLDxD4i1631F4WiWfdSZgX3ZHwA7QgMpaEoRa9Pgee6NpzUBHgyWei9XKEnhfsIZtrx9wIJ824wnqOVqx6XkG8CCGipWyTy50xX5X/YG1YMknotRFvv8/cLar/Tdw5lj",
	}

	ssh_authorized_key{"keir_rsa":
	user	=>	"keir",
	type	=>	"ssh-rsa",
	key     =>	"AAAAB3NzaC1yc2EAAAADAQABAAABAQCZ0cVjjAK0aUyHcnWCmeBaCtHZGSmXsjiy2ZxLMDdHY5lG4aXUH2R3smNuOO6/iR+hlpZJe4EXL1qBfa1hsIeA1dp0qtIVXJVO6nBEhGJFa+2VMGlAH1N/5JDmD5z7eN8EA7tps5JGNx3TAZsLqdElLAvpZ0o92YjY0n+YJ2GWfy32DB3GpDTU7N44whHet1nNv0owGlyP5fq3FIy0ZQH8UvjHqPnaekDpLL4ji9xCWQ/HFTGDpayYLYbTW7F8pdHtRiSg8BZ0Y1C2FrFfUFh0Q7gsM1UDq4yQzm7MjziKA9UUQO27ViJfk3vGf2byz+oQjTCCZXT+g5sv7LSKowil",
	}

	ssh_authorized_key{"henzi_rsa":
	user	=>	"henzi",
	type	=>	"ssh-rsa",
	key     =>	"AAAAB3NzaC1yc2EAAAADAQABAAABAQCOLytqui3m1l3IQIxcyqQwiWxOZM+IzGYSNpxJ8gnGtYMueYq7OBdayD+ASbbeBexI3YqXGfCdZOhAir6REsBGS9ufVvJn3ljFzcVtMtgfWmwCqODbUtllVfkq8nDoiH5e5U+yPdYDUsuVN6EkczuRMx8M4gMLKFWlgSKM6IFlDWAzcxTvH5DdPZ41Dt2Q+EvszklYAw9ENBMfBfd072wyixYJiPabZfyrjw/PTv1MtIN8OiiB4itWyhpD/olorfX2kVigP8l0SGdeeqFZsm4fx+Vh4BrWJdXMh5PVpWbMjHDH4phDHyPW9g9EPebrOJXK6Rcwr4KGBveIsCjEOUIT",
	}

	ssh_authorized_key{"austin_rsa":
	user	=>	"austin",
	type	=>	"ssh-rsa",
	key     =>	"AAAAB3NzaC1yc2EAAAADAQABAAABAQCQ56WeuvrBzNa5h1a8j64byA+cmQFACIguAFmLw5IgLkWXFOIuM+faPh/mBM1sUpff10pARcc91BY/3aDa8Tnac0eeXWp5+84JONcZcJxENm2e3pDguWHBDJc8ZmHfHJQGeO+BZvD1Reg4zdS0oC5RfI/iDax+QQ9J02gyPaoKs2C9aPRUjctY/dd+w9bSPv0KMjF2Wu9O5Wrr1zDlos4/zkzgqHrc1+k/7UW4ahLIr6SWO/0xVsJQgeZf2/855109wBCeFXTnB4l4cupc0riovtIUwQeASSCQSuCnrQ1Nc8y0RRusgWIquJZtbdy2IkjSw54rHarnjakI4QLSJ+Wj",
	}

	ssh_authorized_key{"rico_rsa":
	user	=>	"rico",
	type	=>	"ssh-rsa",
	key     =>	"AAAAB3NzaC1yc2EAAAADAQABAAACAQDDByI3Qw5bixjHbX9P+lmCnDtsPeT/R4ui34GP3sijUr1XyrDncB+SFqcrfEvT8973+kwQ3qX8hcJ2jj5eMXUgXSbSHTzB8O7HDoARG20F63ruVHYlNUNdYiRHECT9qc0wwkNF8+xljIiK4zK3/UpVKVTCiXY4GXMIhtif9NSwOUbad5HFLifudW9hj3EqJQob7nSukWCxVMxf70zc7cxts5zECSn267z0Y/XdskAgil0GtnDX4ADZIddM1jZ+2TVP0y/B6w9/o7wjQ/OUgaBLm1M2gUm/c1D5pNRyyogNHOiotLxlso8S5vYHTC4Uq6BJXPyrPu+RnmsGebMTkHsZxQ2xnvYMUJVuCcVwz4Z0TGc6NcA4ISgOetGXf3O7LI3a15/znpaCpMJuqevo/jNyqb7Vr/lcovRw2KwfDY+H02fjuY/F4ptpgEbFXlGaw75B9z+O3kXXXql4AdpflMPnXeGtUl1rrlUM/w9j62DfJ55Il4HL1LNw63LEnch3zzpuNkGP9G/ht+pjyandtrhf42JDjfzWfDr2c5q+MDcQwrs8and0Lj1Y/XhHBvz10XYBtyGuumUZ4ER+XNwwpof5qO9bBMUENbsLEQHvGXjQQ1K4cx9tG8OBqH6Rqowl6JrOW3U0v8StecGGsAvzvNO8M0kJMUcD8Qt0XRWxX+U5iQ==",
	}

	ssh_authorized_key{"kylie_rsa":
	user	=>	"kylie",
	type	=>	"ssh-rsa",
	key     =>	"AAAAB3NzaC1yc2EAAAADAQABAAACAQC0xRdANCXlcVQpGhqEv0R3064pKetQfZ73H+uiOVov2Amk1fBycgcmlcp0wimF6i6RGRNachdLLub6lBrb1VWh861BmeRB9W1Ge42jZQMYR4iNOj2XpHPIm2K2NMer+2kaQhr0BKrI6z3L4VRTEjR9+hTVMBzhaWv2rX9V+cX+rYGOnTkMgpKIWQMQsSlsexGcePaDDSlnR4VLVW+Csu8YxUv6umie0s0E09ItLceCQEWnrbK+uQJnpmDcC9xqscKxGLLzvZ/xYralhXkmEek3MhlzLR8dR+wsGJD4G5dMze0luXis+xnKKAL+QQQ791gszA3NFZ4RQK0c+Kw1A78CiiqGaFtVJ1BYHJ0ZuHcPQE7iloAzzhuWVbXMFoNKwtWNj5iiv3IjFtNg/bHXtWEkESFirvlmJr5buy5DfRB7iervxLtps6GD2Y7ePltoa44nbThnvxBnu5JSzjnPMQer0ORLvwzRETDCzEZ5m5UW+HqZCjOnB9dSG9w2bOu8l2rFWuf5Ul+MXf2u/RDRA9ucaSpTNbUm/TPBXJNOj8R5F04fF/Q5AaIB8gXAnZk7bWXGCsOlY1UbNXA2mkydH+jZsgI6D+Jn2EKiPIao1ONHdAGBXgCHVPF30OHQPj3qkWj9uA7P5hf7AI21m/NTmmPA6I5ipHRNPTuJyoT4isS5xQ==",
	}

	ssh_authorized_key{"devin_rsa":
	user	=>	"devin",
	type	=>	"ssh-rsa",
	key     =>	"AAAAB3NzaC1yc2EAAAADAQABAAABAQCVnXtI1h5eDPlFLKaRJX971Jd/5V0AhEdxg13HpG7bRlS1/25xs8T7fbPNiUkyaewvWUxU9wFh/YDOhkLgivXH0XDx/Fmdl0e79XchbK/63xisuLEDf/6mHBjo/1eS9iBjUEv/l/Q191hZPQab5mUabcVzsR8BHCvxtMg0MPeB73K/9C3EGHvctVjDiSx4cFc2LkQtlt4hJ2Itfg9730FgR2J5Mdj8cr9k+EbUxz0HzmJXVu6q8p4ASGVtoqK82VGRB7lQWAf2raJCyL0UXyQ1A1aVKivnG2voxPVIlEoG7GlFuRa87LO/bzRasQjCZVSD9sBHD+QxSWG16iyILPdv",
	}

	ssh_authorized_key{"lucas_rsa":
	user	=>	"lucas",
	type	=>	"ssh-rsa",
	key     =>	"AAAAB3NzaC1yc2EAAAADAQABAAABAQDB3DSqNr3YM9/B+mlVgmG+Q4n+Q2T8crk+F36CI43bB7kM+WeIEl3lJ279ExpI9y4KI/Yuh7eDWFgHriDB0xyq7IQnWvsKVhT4aWJv4Yrjde9UeD+NPUoRgbB8NScBWBUo+aI/VZAUVCg1xKyrxbcj89SBM1FrC8jZalz95VXR/rpJzSTQFN0c9KVZHfsCOBrGdAC9bbMES42Yqo5elnh7JfBsdqnYL+HHqkT7AyVcuqlBC4u+ZYoXmz5da4KyeyIEGFrDQM7h+dnyKQh1caRu7YyxmTvXA6OSjYE4rZtKQ9WZU02yB6o7CxEE/P8xa2mAZQEgUnjUmSXxRHFrobmX",
	}
}
