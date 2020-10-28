# encoding: UTF-8
class ComponentesUteis
 
  def seleciona_opcao(id, value)
    page.select value, from: id
  end
  
end