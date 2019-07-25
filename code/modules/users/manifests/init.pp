class users {
  
        user {  "basecase":
                ensure  => 'present',
                comment => 'name',
                gid     => '0000',
                groups  => ['fill', 'this', 'later'],
                home    => '/home/basecase',
                shell   => '/bin/bash',
                uid     => '0000',
        }
}
