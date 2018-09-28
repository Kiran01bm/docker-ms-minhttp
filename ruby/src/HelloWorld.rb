#!/usr/bin/env ruby

require 'socket'
server = TCPServer.new 24005

while session = server.accept
  request = session.gets
  puts request

  session.print "HTTP/1.1 200\r\n"
  session.print "Content-Type: text/html\r\n" 
  session.print "\r\n"
  #session.print "Hello world from ruby!!! The time is #{Time.now}"
  session.print "hello world from ruby!!!!"

  session.close
end
