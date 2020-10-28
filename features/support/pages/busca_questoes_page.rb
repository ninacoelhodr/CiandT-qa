# encoding: UTF-8

class BuscaQuestoesPage 


  def acessar_pagina_de_busca
       visit CONFIG['url_padrao']
       botao_menu_broswse.click
  end

  def digitar_no_campo_de_busca(palavra_para_buscar)
    campo_de_busca.send_keys palavra_para_buscar
  end

  def clicar_bota_buscar
    botao_buscar.click
  end

  def validacao_mensagem_pesquisar(mensagem)
    expect(caixa_de_mensagem).to have_content(mensagem)
  end
  
  def escolher_opcao(categoria)
    ComponentesUteis.new.seleciona_opcao('type',categoria)
  end

  def validacao_quantidade_de_itens(quantidade)
    expect(page).to have_xpath("//table/tbody/tr", count: quantidade)
  end

  def validacao_paginacao
    expect(page).to have_css('.pagination')
  end

  def validacao_itens_dificeis(quantidade)
    expect(page).to have_xpath("//table/tbody/tr//td[contains(text(),'Hard')]", count: quantidade)
  end

    #A PARTIR DESSE PONTO FICAM OS METODOS PARA OS ELEMENTOS DA TELA

    def botao_menu_broswse
      find(:xpath, "(//a[@href='https://opentdb.com/browse.php'])[1]")
    end

    def campo_de_busca
    find('#query')
    end

    def caixa_de_mensagem
      find('.alert')
    end

    def botao_buscar
    find(:xpath, "//*[contains(text(),'Search')]")
    end


end