class sshd {
	package { "openssh-server":
		ensure => installed;	
	}
	file { "/etc/ssh/sshd_config":
		ensure  => present,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		source  => "puppet:///modules/sshd/sshd_config",	
		require => Package["openssh-server"], 
	}	

	service { "ssh":
		enable    => true,
		ensure    => running, 
		subscribe => File["/etc/ssh/sshd_config"],
		require   => [ Package['openssh-server'], ],
	}

	ssh_authorized_key { "omcevoy_pub_kp":
		user => "ubuntu",
		key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDCxtgnXB0yhKhxicNB8/qizjY398qG/eLlFUaQW0JKRTxmeJWn15hU2vcVf/i7U3l7e9n+eHuvH4mnMv0fmtWzx31s3ZfkOpzTq7jezwdmq80vLEL4ah4wpmZryS87dv8iRdGc61k788bWdmbQsUScYyuD/Ppfc9Q9wFDjJalbghm1mwoSTZ7XxDYcV5vZKFl9cNH51X2TzW54Pq6s5Z73KXJnGJYB5fhHtIgMJF8t2aPPF0ER2hhIEEU+zOhLM0cj3Ll+LLUD1YtKYcURvRkt7iJKyencxU9fqT8nfJPvjm9t1elrz5bSR4Xk+Pod8PT1qKFzaOjsLYk7lJZ9yO/9", 
}
