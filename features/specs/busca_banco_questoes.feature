#language: pt
Funcionalidade: Busca no Banco de Questões
   
   
    Cenário: Busca por questão inexistente
        Dado que navego para a página de busca do banco de questões
        E digito 'Science: Computers' no campo de busca
        Quando clico no botão de buscar
        Então visualizo uma mensagem de erro com o texto 'No questions found.'

    #Precisamos fazer uma busca na categoria por Science: Computers e verificar se a listagem de questões está com 25 itens e se o controle de paginação irá aparecer.

     
        Cenário: Busca por categoria
        Dado que navego para a página de busca do banco de questões
        E digito 'Science: Computers' no campo de busca
        E escolho a opção 'Category'
        Quando clico no botão de buscar
        Então aparece 25 itens na tela
        E aparece o controle de paginação

  
        Cenário: Buscar quantidade de questões difíceis existe na categoria Science:Computers
        Dado que navego para a página de busca do banco de questões
        E digito 'Science: Computers' no campo de busca
        E escolho a opção 'Category'
        Quando clico no botão de buscar
        Então aparece 13 questões difíceis
