#!/usr/bin/env bash
# This script make changes to our configuration file.
file {'/home/root/.ssh/config':
	ensure => present,
	owner => 'root',
	group => 'root',
	mode => '0600',
	content => '
	Host *
	    PasswordAuthentication no
	    IdentityFile ~/.ssh/school',
}
