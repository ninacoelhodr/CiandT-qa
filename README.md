
# Instalação e Configuração no Windows

1 - Navegadores:
- Chrome Versão  86.0.4240.111 (Versão oficial) 64 bits
- Firefox versão ≥79.


2 - Ruby version:
- A versão utilizada foi 2.6.6


3 - Para instalar as gens no console digite:
- bundler 

4 - Para rodar os testes no console digite:
- cucumber


5 - Versões GemFile:
source 'http://rubygems.org'

- gem 'capybara'
- gem 'cucumber'
- gem 'rspec'
- gem 'selenium-webdriver'
- gem 'site_prism'
- gem install rails

# Instação e configuração Linux 
### Talvez seja necessária alguma atualização

- Firefox > 79


1 - Ruby DevKit
- sudo apt install ruby-full
- sudo apt install rubygems
- sudo apt install ruby-railties
- sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
- curl -sL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash -

2 - Add $HOME/.rbenv/bin to the user PATH.

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

3 - Instalação de Gems

- gem install 'capybara' 
- gem install 'cucumber' 
- gem install 'rspec' 
- gem install 'selenium-webdriver' '
- gem install 'site_prism'
- gem install rails


# Estrutura do projeto:
- Gemfile arquivo com as bibliotecas utilizadas no projeto, a versão do ruby utilizada foi a 2.6.6
- config/cucumber.yml arquivo de configuração para execução do projeto, onde configura relatório, tags, browser.
- feature/specs onde ficam as features
- features/step_definitions onde ficam os passos criados
- features/support classes de apoio ao projeto caso tivesse conexão com banco, as paginas e algumas utilidades
- features/support/env.rb configurações do capybara.
