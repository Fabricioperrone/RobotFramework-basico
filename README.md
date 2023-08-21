# Robot Framework Curso-Básico


## Conteúdo

## Introdução:
- O Robot Framework
- Keyword-driven
- Libraries
- Intalações
## Construção 
- Escrita dos testes
- Implementação dos testes
- Execução
## Estruturas
- Variáveis
- Argumentos
- Estruturas IF e FOR
- Logs
## Prática
- Web Testing (com Selenium)
- API REST(com Requests)

## Abrangência do Robot
### Testes:
- Web
- API
- Mobile
- GUI

### Estilos:
- Keyword-driven ( formato procedural )
- Datta-Driven ( tabelas de dados)
- Gherkin (BDD)
### Execução:
- Local/Debug
- Execução em CI/CD
- Execução em DOCKER

## Foi feito para...
- Testes de Aceitação ( funcionais e sistema)
- Interagir com diversos tipos de sistemas
- Automatizadores não muito técnicos
- Tirar o foco da programação e focar nos testes
- RPA (Robot Projects Automation)

## Atende bem...
- Testes funcionais  de Back-end e UI ( incluindo Visual Regression)
- Times de _stacks_ híbridas
- Times com QAs iniciando em automação de testes
- Projetos com automação de diferentes tipos de sistema

## Pontos Fortes
- Open Source
- Python
- Documentação 💚 [https://robotframework.org/]
- Maioria das _libraries_ são programadas por desenvolvedores experientes
- Comunidade Ativa ( inclusive pt-br)
- Visual Code com apenas um único _plugin_
- Não depende de outrs frameworks ( _cucumber_, por exemplo)
- Integração por _listeners_

## Não serve para...
- Testes unitários e de compontes
- Testes de performance
- Times com profissionais muito técnicos que preferem testar com _stack_ utilizada
- Quem prefere trabalhar com IDE própria do Framework

## Comandos mais utilizados:
### Comando para executar uma Tag específica
- Digite no terminal robot -i. 
- E não esqueça de colocar o nome do arquivo de teste, como no exemplo:

````
Robot -i menus myshop_testes.robot
````
Ele irá executar todos os testes dessa suite. Que tem essa Tag. 

### Comando para -e )exclude)
``````
robot -e menus myshop_testes.robot
``````
O Rotot irá rodar todos os testes menos os testes de menu.

### Comando para organizar aquivos soltos do Robot, como exemplo logs, output, screeshots...como exemplo podemos digitar um nome de uma como resultados.
````
robot -d resultados myshop_testes.robot
````
O Robot irá jogar todos os arquivos de gerados dentro da nova pasta.

### Comando para substituir uma variável global
```
robot -v BROWSER:firefox -i menus -d resultados myshop_testes.robot
```
Em uma linha de comando unirmos os últimos comandos utilizados no noss terminal.

Solução para erro de execução das suites de teste arquivo json

![ERRO](./img/solução%20para%20o%20erro%20de%20lsp.png)

Solução para o erro:
```
{

    // Use IntelliSense to learn about possible attributes.

    // Hover to view descriptions of existing attributes.

    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387

    "version": "0.2.0",

    "configurations": [

        {

            "type": "robotframework-lsp",

            "name": "Robot Framework: Launch template",

            "request": "launch",

            "env": {},

            "args": [

                "-d", "logs"

            ]

        }

    ]

}
```
Cole essa configuração para ajustar o erro!