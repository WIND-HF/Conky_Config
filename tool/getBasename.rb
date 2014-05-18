#!/usr/bin/env ruby
##encode: utf-8

filename = ARGV.join ' '
puts filename.sub(/^\/.*\/{1}/m, '').sub(/\..*?$/m, '')
