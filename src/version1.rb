def preencher_vetor_v1(indi_vetor)
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

  return meu_vetor, total_sorteios, numeros_armazenados, colisoes, tempo_execucao
end