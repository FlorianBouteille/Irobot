#!/usr/bin/ruby

require 'socket'        # Sockets are in standard library

hostname = 'localhost'
port = 2000

server = TCPSocket.open(hostname, port)

while response = server.gets     # Read lines from the socket
   puts response.chomp
   input = gets.chomp
   server.puts "#{input}"
end
