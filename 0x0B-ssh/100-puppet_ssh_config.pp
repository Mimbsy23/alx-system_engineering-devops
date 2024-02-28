#!/usr/bin/env bash
# This script make changes to our configuration file.
file {'/home/root/.ssh/config':
	ensure => present,
	mode => '0600',
	content => '
	Host *
	    PasswordAuthentication no
	    IdentityFile ~/.ssh/school',
}
