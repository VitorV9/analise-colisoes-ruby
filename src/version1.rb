puts ""
puts "---Através desse programa vamos preencher um vetor de tamanho N com os números de 1 até N."
puts "--Sendo feito em ordem pseudoaleatória, impedindo que um número seja armazenado mais de uma vez."
puts ""

print "Informe o número de indices do vetor: "

indi_vetor = gets.chomp.to_i

meu_vetor = Array.new(indi_vetor)

numeros_armazenados = 0
colisoes = 0 
total_sorteios = 0 
tempo_inicio = Time.now

while numeros_armazenados < indi_vetor
  total_sorteios += 1
  numero_sorteado = rand(1..indi_vetor)

  if meu_vetor.include?(numero_sorteado)
    colisoes += 1
  else
    meu_vetor[numeros_armazenados] = numero_sorteado
    numeros_armazenados += 1
  end
end

puts "#{meu_vetor}"