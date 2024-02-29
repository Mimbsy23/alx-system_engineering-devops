#!/usr/bin/env bash
# This script make changes to our configuration file.
file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/sshd_config',
  line  => 'PasswordAuthentication no',
}

file_line { 'Declare identity file':
  path  => '/home/root/.ssh/config',
  line  => 'IdentityFile ~/.ssh/school',
}
