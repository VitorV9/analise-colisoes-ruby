def solicitar_tamanho_vetor
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
  return indi_vetor
end