puts ""
puts "--->Através desse programa vamos preencher um vetor de tamanho N com os números de 1 até N."
puts "-->Sendo feito em ordem pseudoaleatória, impedindo que um número seja armazenado mais de uma vez."
puts ""

print "Informe o número de indices do vetor: "

indi_vetor = gets.chomp.to_i

while indi_vetor <= 0
  puts ""
  print "->Valor inválido, você deve informar um número de indices(N) maior que zero: "
  indi_vetor = gets.chomp.to_i
end

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

tempo_fim = Time.now
tempo_execucao = tempo_fim - tempo_inicio

print "<################################################"
puts "\nVetor gerado:"
puts "#{meu_vetor}"
puts "Quantidade de números sorteados: #{total_sorteios}"
puts "Quantidade de números armazenados: #{numeros_armazenados}"
puts "Quantidade de colisões: #{colisoes}"
puts "Tempo de execução: #{tempo_execucao} segundos"
print "################################################>"