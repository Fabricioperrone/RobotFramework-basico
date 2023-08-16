*** Settings ***
Documentation    essa suite testa o site da Myshop.com.busca_produtos
Resource         myshop_resources.robot
Test Setup       Abrir o navegador
# Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de teste 01: Acesso ao menu "T-shirts"
    [Documentation]    Esse teste verifica o menu T-shirts do site da Myshop
...                    e verifica a categoria T-shirts
    [Tags]                 menus  categorias
    Acessar a home page do site Myshop
    Verificar se o título da página fica "My Shop"
    Entrar no menu "T-shirts"
    Verificar se aparece a frase "T-shirts - My Shop"
    Verificar se o título da página fica "T-shirts - My Shop"
#     Verificar se aparece a categoria "T-shirts"

# Caso de teste 02: Pesquisa de um Produto
#     [Documentation]    Esse teste verifica a busca de um produto
#     [Tags]             busca_produtos  lista_busca
#      Acessar a home page Myshop
#      Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#      Clicar no botão de pesquisa
#      Verificar o resultado da pesquisa se está listando o produto pesquisado

