#!/usr/bin/ruby

require 'socket'           

server = TCPServer.open(2000) 
                          
client = server.accept       
client.puts "Plop"
loop do 
   input = client.gets   
   if input.chomp == "exit"
        client.puts "a la prochaine étienne"
        client.close
        exit
   end
   if input.length > 30
       client.puts "j'ai la flemme de répéter cette phrase"
   else
       client.puts "ah cool tu as dit : #{input}"
   end
end

