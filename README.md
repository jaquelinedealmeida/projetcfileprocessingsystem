# README

Projeto voltado para o upload e processamento de arquivos XML e visualização de relatórios dos arquivos. 

## CONFIGURAÇÕES 

Aplicação desenvolvida em Ruby on Rails (versão 7.2), utilizando o SQlite3 do próprio rails como banco de dados por ser uma aplicação simples.

## GEMS - DEPENDÊNCIAS

* Devise: Autenticação de usuários

* Sidekiq: Processamentos em background

* Redis: para armazenamento das tarefas do Sidekiq

* Active storage validations: Validação de upload

* Nokogiri: API para ler, escrever, modificar e consultar documentos XML. 

* Rspec rails: testes automatizados

## COMANDOS

´rail s: para subir o servidor´
´bundle install: para instalar as gems´
´bundle exec sidekiq: para executar o sidekip´
´redis-server: para executar o redis´

