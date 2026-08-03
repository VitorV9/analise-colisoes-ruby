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
numeros_disponiveis = (1..indi_vetor).to_a
tempo_inicio = Time.now

while numeros_armazenados < indi_vetor
  total_sorteios += 1
  texto_unico = "#{Time.now.nsec}_#{total_sorteios}"
  indice_sorteado = texto_unico.hash.abs % numeros_disponiveis.length
  
  numero_sorteado = numeros_disponiveis[indice_sorteado]

  meu_vetor[numeros_armazenados] = numero_sorteado
  numeros_armazenados += 1

  numeros_disponiveis.delete_at(indice_sorteado)
end

tempo_fim = Time.now
tempo_execucao = tempo_fim - tempo_inicio

vetor_original = meu_vetor.sort
vetor_comparacao = (1..indi_vetor).to_a

if vetor_original == vetor_comparacao
  status_validacao = "Todos os números de 1 a N estão presentes sem repetições."
else
  status_validacao = "O vetor não atende aos requisitos."
end

puts ""
print "<################################################"
puts "\nVetor gerado:"
puts "#{meu_vetor}"
puts "Quantidade de números sorteados: #{total_sorteios}"
puts "Quantidade de números armazenados: #{numeros_armazenados}"
puts "Quantidade de colisões: #{colisoes}"
puts "Tempo de execução: #{tempo_execucao} segundos"
puts "Validação final: #{status_validacao}"
print "################################################>"