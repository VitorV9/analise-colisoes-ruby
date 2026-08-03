require_relative 'solicitaIndi'
require_relative 'version1'
require_relative 'validaVetor'
require_relative 'exibirResult'

puts ""
puts "---> EXECUTANDO VERSÃO 1 (Com rand e colisões)"

tamanho_n = solicitar_tamanho_vetor()
meu_vetor, sorteios, armazenados, colisoes, tempo = preencher_vetor_v1(tamanho_n)
status_validacao = validar_vetor(meu_vetor, tamanho_n)
exibir_resultados(meu_vetor, sorteios, armazenados, colisoes, tempo, status_validacao)