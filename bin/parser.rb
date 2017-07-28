#!/usr/bin/env ruby
require_relative "../lib/smart_pension"

file_name = ARGV[0]
if file_name.nil?
  p "You should pass a file name"
  return 0
end

file = nil
begin
  file = File.read(file_name)
rescue
  p "File not found"
end

if !file.nil?
  output = SmartPension::SPLogParser.new.parse(file.lines)
  $stdout << output << "\n"
end
