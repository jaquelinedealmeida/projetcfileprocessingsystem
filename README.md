
# PROJETO - SISTEMA DE PROCESSAMENTO DE ARQUIVOS

## OBJETIVO

Desenvolver aplicação para upload e processamento de arquivos XML e visualização de relatórios. 

## REQUISITOS

* 1 - Autenticação de Usuário com login seguro, onde apenas usuário autenticados possam acessar a aplicação.
* 2 - Upload de Documentos XML com interface para que os usuários possam enviar os arquivos
* 3 - Processamento em background utilizando Sidekiq
* 4 - Relatório detalhado em tela com as seguintes informações extraídas dos arquivos XML
* 5 - Filtros para melhor visualizar as informações processadas

## CONFIGURAÇÕES 

Aplicação desenvolvida em Ruby on Rails, utilizando o SQlite3 do próprio rails como banco de dados por ser uma aplicação simples.

### VERSÕES

* Ruby 3.3.4
* Rails Rails 7.2.0

## GEMS - DEPENDÊNCIAS

* Devise: Autenticação de usuários

* Sidekiq: Processamentos em background

* Redis: para armazenamento das tarefas do Sidekiq

* Active storage validations: Validação de upload

* Nokogiri: API para ler, escrever, modificar e consultar documentos XML. 

## COMANDOS

`rail s`: subir o servidor

`bundle install`: instalação das gems

`bundle exec sidekiq`:: execução do sidekip

`redis-server` : execução do redis

`bundle exec rubocop -f github`: lint para correção de erros de indentação, sintaxe.

`rails console`: entrar no console do rails para consultas no Banco de dados

## FEATURES A SEREM FEITAS 

* Implementação de testes automatizados utilizando RSPEC para as funcionalidades principais.    
* Possibilidade de importar um arquivo ZIP contendo vários documentos XML para processamento em lote.    
* Possibilidade de exportar o relatório em formato excel.
  
## Autores

- [Jaqueline de Almeida](https://www.linkedin.com/in/jaqueline-de-almeida/)