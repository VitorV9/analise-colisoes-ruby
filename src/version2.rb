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