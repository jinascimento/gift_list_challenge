
# Necessidade a ser resolvida
Desafio:

Precisamos melhorar a experiência de usuário em uma tela específica do nosso sistema de listas de presente. Aqui estão algumas histórias de usuário relacionadas:

1. Como um usuário dono de lista eu quero poder filtrar produtos de uma grande base de dados para que eu possa selecionar os produtos depois;

2. Como um usuário dono de lista eu quero poder selecionar vários produtos e adicioná-los à minha lista de presentes para que eu possa ter minha lista de presentes com produtos customizados.

# Especificaão técnica

1 - Busca de produtos

Com base no relato do usuário, existia a necessidade de buscar produtos de uma grande base de dados. Foi utilizado a ferramenta [ElasticSearch](https://www.elastic.co/pt/products/elasticsearch).
O ElasticSearch é uma ferramenta de pesquisa e análise Restful, utiliza o poderoso mecanismo de pesquisa Lucene para ajudar a fornecer pesquisas extremamente precisas.
A cada digito pressionado pelo usuário uma requesição é enviada ao servidor retornando instantâneamente os resultados.

2 - Selecionar varios produtos para adicionar a lista

Foi utilizado uma estratégia simples e eficaz, seleção de todos os produtos e envio ao servidor um request com os identificadores dos produtos a ser incluído na listagem.

## Configuraçes do ambiente

* Ruby version: 2.6.0

* Rails version: 5.2.3

* Banco de dados: PostgreSql

* Elasticsearch: 7.3.0

## Ambiente de Desenvolvimento

* Rode os comandos para configuração do ambiente Rails.

 `bundle install`

`rails db:setup`
* Suba o servidor rails rodando o comando  `rails s`
* O Projeto estara disponivel em `http://localhost:3000`


### Com docker
* Instale docker: versão 19.03.1
     - Mac: 
        https://docs.docker.com/docker-for-mac/install/
     - Linux:
        https://docs.docker.com/install/linux/docker-ce/ubuntu/
     - Windows:
        https://docs.docker.com/docker-for-windows/install/

* Instale docker-compose: versão 1.24.1
    - Mac: 
        (Instalado junto com o docker Desktop)
     - Linux:
        https://docs.docker.com/compose/install/
     - Windows:
        https://docs.docker.com/compose/install/

* Clone este repositorio
* Acesse a pasta e suba o project com o comando `docker-compose up`


