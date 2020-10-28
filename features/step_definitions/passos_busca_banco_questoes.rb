 #encoding: utf-8
 
 Dado("que navego para a página de busca do banco de questões") do 
  BuscaQuestoesPage.new.acessar_pagina_de_busca          
  end 
 
  Dado("digito {string} no campo de busca") do |palavra_para_buscar| 
    BuscaQuestoesPage.new.digitar_no_campo_de_busca(palavra_para_buscar)
  end 

  Dado("escolho a opção {string}") do |categoria| 
    BuscaQuestoesPage.new.escolher_opcao(categoria)
  end
  
  Quando("clico no botão de buscar") do
    BuscaQuestoesPage.new.clicar_bota_buscar
  end

  Então("visualizo uma mensagem de erro com o texto {string}") do |mensagem|
    BuscaQuestoesPage.new.validacao_mensagem_pesquisar(mensagem)
  end

  Então("aparece {int} itens na tela") do |quantidade_de_itens|
    BuscaQuestoesPage.new.validacao_quantidade_de_itens(quantidade_de_itens)
  end

  Então("aparece o controle de paginação") do
    BuscaQuestoesPage.new.validacao_paginacao
  end

  Então("aparece {int} questões difíceis") do |quantidade|
    BuscaQuestoesPage.new.validacao_itens_dificeis(quantidade)
  end


