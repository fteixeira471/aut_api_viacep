# **Projeto de Testes Automatizados**

Olá,

Este é um projeto para testes automatizados da API REST de consulta de CEPs da ViaCEP.

----
## **Tecnologias Utilizadas**
* **Ruby** (_para o desenvolvimento do script automatizado_)
* **Bundler** (_para gerenciamento das dependências do projeto_)
* **Cucumber** (_para ler as especificações dos testes escritos em Gherkin e orquestar a execução dos mesmos_)
* **HTTParty** (_para o envio das requisições_)
* **RSpec** (_para validar que as respostas das requisições são conforme esperado_)
* **JSON Schema** (_para validar o contrato de resposta da API_)

----
## **Ferramentas Necessárias**
* [**Ruby (versão 2.6.6 com DevKit)**](https://www.ruby-lang.org/pt/documentation/installation)
* [**Git Client**](https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git)
* **Gem Bundler** - com o Ruby instalado, execute o comando abaixo no terminal:
```
$ gem i bundler
```

----
## **Executando a Automação**
1. Antes de tudo, faça a instalação das **Ferramentas** informadas anteriormente. Logo, abra o terminal e faça um clone do projeto:
```
$ git clone https://github.com/fteixeira471/aut_api_viacep.git
```

2. Instale as dependências
```
$ bundle
```

3. Execute o **Cucumber**
```
$ bundle exec cucumber
```

----
## **Relatórios de Execução dos Testes**
Por padrão, durante a execução dos testes, são apresentados no terminal os resultados (testes que passaram e que falharam).
Porém, é possível gerar um relatório amigável no formato HTML passando o [_profile_](https://cucumber.io/docs/cucumber/configuration/#profiles) **html_report**:
```
$ bundle exec cucumber -p html_report
```

Esses relatórios ficam disponíveis dentro da pasta:
```
reports
└── html
```

----
## **Execução de Cenários Específicos**
Foram inseridas [_tags_](https://cucumber.io/docs/cucumber/api/#tags) nos cenários de teste. Logo, é possível executar apenas os cenários que desejar. Segue alguns exemplos:
```
> Executar apenas os cenários relacionados a CEPs inválidos e gerar relatório em HTML
$ bundle exec cucumber -t @cep_valido -p html_report


> Executar todos os cenários que não sejam de CEPs inexistentes
$ bundle exec cucumber -t 'not @cep_inexistente'
```
Existem outras _tags_ disponíveis que podem ser utilizadas. Visualize no arquivo **.feature** localizado em:

```
features
└── specs
```