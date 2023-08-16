*** Settings ***
Documentation    essa suite testa o site da Myshop.com.busca_produtos
Resource         myshop_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de teste 01: Acesso ao menu "T-shirts"
    [Documentation]    Esse teste verifica o menu T-shirts do site da Myshop
...                    e verifica a categoria T-shirts
    [Tags]                 menus  categorias
    Dado que estou na home page da myshop
    Quando acessar o menu "T-shirts"
    Então o título da página deve ficar "T-shirts"
    E o texto "T-shirts"
    E a categoria "T-shirts" deve ser exibida na página

   
Caso de teste 02: Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos  lista_busca
    Dado que estou na home page da myshop
    Quando pesquisar pelo produto "Blouse"
    Então o título da página deve ficar "Blouse"
    E um produto da linha "Blouse" deve ser mostrado na página


