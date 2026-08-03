def exibir_resultados(vetor, sorteios, armazenados, colisoes, tempo, status_validacao)
  puts ""
  print "<################################################"
  puts "\nVetor gerado:"
  puts "#{vetor}"
  puts "Quantidade de números sorteados: #{sorteios}"
  puts "Quantidade de números armazenados: #{armazenados}"
  puts "Quantidade de colisões: #{colisoes}"
  puts "Tempo de execução: #{tempo} segundos"
  puts "Validação final: #{status_validacao}"
  print "################################################>\n"
end