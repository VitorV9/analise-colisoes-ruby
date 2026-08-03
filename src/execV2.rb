require_relative 'solicitaIndi'
require_relative 'version2'
require_relative 'validaVetor'
require_relative 'exibirResult'

puts ""
puts "---> EXECUTANDO VERSÃO 2 (sem rand e colisões)"

tamanho_n = solicitar_tamanho_vetor()
meu_vetor, sorteios, armazenados, colisoes, tempo = preencher_vetor_v2(tamanho_n)
status_validacao = validar_vetor(meu_vetor, tamanho_n)
exibir_resultados(meu_vetor, sorteios, armazenados, colisoes, tempo, status_validacao)