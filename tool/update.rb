#!/usr/bin/env ruby
##encoding: utf-8

def Read_File(filename)
  raise unless File.exist? filename

  file = File.open(filename, 'r')
  data = file.read
  file.close

  return data
end

def Update_File(filename, context)
  context += Read_File filename
  file = File.open(filename, 'w')
  file.write context
  file.close
end

# 获取所有select文件的内容
outputStr = ''
ARGV.each do |filename|
  next if File.directory? filename

  outputStr += Read_File filename
  outputStr += "\n"
end

puts '#' + Time.now.to_s
puts outputStr
