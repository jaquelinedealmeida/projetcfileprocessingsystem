
# PROJETO - SISTEMA DE PROCESSAMENTO DE ARQUIVOS

## OBJETIVO

Projeto voltado para o upload e processamento de arquivos XML e visualização de relatórios dos arquivos. 

## CONFIGURAÇÕES 

Aplicação desenvolvida em Ruby on Rails, utilizando o SQlite3 do próprio rails como banco de dados por ser uma aplicação simples.

## VERSÕES

* Ruby 3.1.2p20
* Rails Rails 7.2.0

## GEMS - DEPENDÊNCIAS

* Devise: Autenticação de usuários

* Sidekiq: Processamentos em background

* Redis: para armazenamento das tarefas do Sidekiq

* Active storage validations: Validação de upload

* Nokogiri: API para ler, escrever, modificar e consultar documentos XML. 

* Rspec rails: testes automatizados

## COMANDOS

`rail s: subir o servidor`

`bundle install: instalarção das gems`

`bundle exec sidekiq: execução do sidekip`

`redis-server: execução do redis`

## Autores

- [Jaqueline de Almeida](https://www.linkedin.com/in/jaqueline-de-almeida/)