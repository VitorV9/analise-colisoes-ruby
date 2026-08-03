def validar_vetor(vetor_gerado, indi_vetor)
  vetor_original = vetor_gerado.sort
  vetor_comparacao = (1..indi_vetor).to_a

  if vetor_original == vetor_comparacao
    return "Todos os números de 1 a N estão presentes sem repetições."
  else
    return "O vetor não atende aos requisitos."
  end
end