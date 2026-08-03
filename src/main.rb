puts ""

puts "---Através desse programa vamos preencher um vetor de tamanho N com os números de 1 até N."
puts "--Sendo feito em ordem pseudoaleatória, impedindo que um número seja armazenado mais de uma vez."

puts ""

print "Informe o número de indices do vetor: "

indi_vetor = gets.chomp.to_i

meu_vetor = Array.new(indi_vetor)

puts "#{meu_vetor}"