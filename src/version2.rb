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

def preencher_vetor_v2(indi_vetor)
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

  return meu_vetor, total_sorteios, numeros_armazenados, colisoes, tempo_execucao
end

def validar_vetor(vetor_gerado, indi_vetor)
  vetor_original = vetor_gerado.sort
  vetor_comparacao = (1..indi_vetor).to_a

  if vetor_original == vetor_comparacao
    return "Todos os números de 1 a N estão presentes sem repetições."
  else
    return "O vetor não atende aos requisitos."
  end
end

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

tamanho_n = solicitar_tamanho_vetor()
meu_vetor, sorteios, armazenados, colisoes, tempo = preencher_vetor_v2(tamanho_n)
status_validacao = validar_vetor(meu_vetor, tamanho_n)
exibir_resultados(meu_vetor, sorteios, armazenados, colisoes, tempo, status_validacao)