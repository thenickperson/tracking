#!/usr/bin/env ruby
#Tracking's config file.

$config = {
	:data_file   => ENV["HOME"] + "/.tracking",
	:lines       => 10,
	:first_line  => "+-------+--------------------------------------+",
	:last_line   => "+-------+--------------------------------------+"
}
