class sshd {
	package { "openssh-server":
		ensure   => installed,
		provider => apt,
	}
	file { "/etc/ssh/sshd_config":
		ensure  => present,
		notify  => Service['sshd'],
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
		user   => "ubuntu",
		ensure => present,
		type   => "ssh-rsa",
		key    => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDCxtgnXB0yhKhxicNB8/qizjY398qG/eLlFUaQW0JKRTxmeJWn15hU2vcVf/i7U3l7e9n+eHuvH4mnMv0fmtWzx31s3ZfkOpzTq7jezwdmq80vLEL4ah4wpmZryS87dv8iRdGc61k788bWdmbQsUScYyuD/Ppfc9Q9wFDjJalbghm1mwoSTZ7XxDYcV5vZKFl9cNH51X2TzW54Pq6s5Z73KXJnGJYB5fhHtIgMJF8t2aPPF0ER2hhIEEU+zOhLM0cj3Ll+LLUD1YtKYcURvRkt7iJKyencxU9fqT8nfJPvjm9t1elrz5bSR4Xk+Pod8PT1qKFzaOjsLYk7lJZ9yO/9", 
	}
	ssh_authorized_key { "James_key":
		ensure => present,
    	        user   => "ubuntu",
		type   => "ssh-rsa",
		key    => "MIIEpAIBAAKCAQEAs0jTSJqLEUAj/GYZjI2IwHNYsxkXWY88Ar3q0zWExH4a4zfhsrE4wjrEYD0GNMD8JV5iWw+PnTcPjUzjprFs4PRxfLCprLrsiwI8D9C9265QwNCJfiuzrkYmL4mpTqItui0H2M/j5bXc35OV46Dn64HBXEb4zHtHrEgHR7M6M9PHIV74lA6nqIr1owXHwFyxyfk2QTqs8bptAWBDdjPD2MLLlpbKoj7HWt8LaIOsq5VKP+Ro6Utj69g+XphrwueyeBWs/GSNQZqRzRVfquTQVKSg6OqYvjhyanRv1rpUUqEHM7XvEVMpaeyuFe1S37oZ7dEfIWTTMJ2uuCF0AXPzTQIDAQABAoIBABho8vNwrzyTChNEZ3gekR761XnVEbvM57PL3dwR7li+frSvGBi3Tm4LiE8+H8kw+WOxHR0e2kPiikiHznsUrylVvtnmR8PP04L9s+XHWwI9EpueCQpXsugofux8BsRBCo7NsMLRU0skXsVGF+NdNhZ3nTcOJrPYmSKYz/zwJx2FHnIqqZcv//mJbM2g+ZglV/we8K/o9rocIdmUdMuej3oOnliJHG1AmCxQaJwDBgQDdbzhJxEdj8NXm7w4pzai1y/1twFZIqe8GROMLV9N1lzyNYQjkkPzSYAViHEkG5UsOhi5WO2svmW3MpLwPxxcxA2LB7/T3De4FNurwFPWc5UCgYEA7ZQXjz4EP57/HRM2XAfCuMQpEhPLW/Wzncrcc+841r++erGpjiU87VYZ4Qkoj7wsAICyH+fJD994pD/dGDAVm9a4lbteD4CIwVl4V40N74P5+Gz5VqHFVCPmjGnvIt5j/fmAf52TDL7Iq5otWyxkQkCuwttwi3tAHA1B8oS3YRcCgYEAwS+acm9itZIZRwQuzu1khQt3lMLN8jDgn9NTOlZtOVZ3yAKi5t4B1uThBo4wOIiouoRioROCIYc2hA/5V3A4FgiXu+dO2NktGpFbiPL4e83eB0tW1mxHH6u2waM7PDRoqmidwwZziVyDZTOSPAW8e6ivVZBbvA7ekymM2anB5TsCgYAiq6X0hXxhPHbGa3NXYtqL1DSaKsFWnjikImKhmJuW20yU4zB3Sf/mMtZ7/LYqo69YM2/LMCwrYNVeQuOlD/9XSrKNR1amtH9AmCnzvOX3ui7UjjKk7d66NLMEcsEvOX0mJy8VcI1xIrZuNIXB9Gx9LqtSTGvULxxf+59QIQYR6QKBgQC9xP9YzmYOqre99TPt/XCy6PLM5Rfdg3oERlkJg4DDxFbh2QUg+JCiAi+yetaPkl786bLhPAKm4OYCkJaE+C2AJ2y2HqBrj9sosAVU4CiLpU0nqTBibfbn+4wJZ0l2+JygWSgwPhQcqQ5ByYkrAQ+IAcpKqQYUFB88PKKp5oIbpQKBgQCTMvHyyR9i7+89CNO043uB65xRM6ngnGX7z4z8p6qhMvReHYgY0nJMJ2e90fFfhEv1c29D+xSE6mGoTjSF/63hWxB9Swlio7u611/y6S891DU2R1vV/oGnVKiN80W8N6t10pX01ABkWQ9MhuYMh9ZeoT3wNmJC6ptMg7ldevoe0w==",
}
}
