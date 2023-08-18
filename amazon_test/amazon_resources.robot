*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BROWSER}               chrome
${URL}                   https://www.amazon.com.br/
${BTN_ADD_CARRINHO}  add-to-cart-button
*** Keywords ***
Abrir o navegador
    # Open Browser    browser=${BROWSER}  options=add_experimental_option("detach", True)
    Open Browser    browser=${BROWSER}
    Maximize Browser Window


Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    # Wait Until Element Is Visible    locator=${LOGOTIPO}


Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}
    
Clicar no botão de pesquisa
      Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=//img[contains(@alt,'${PRODUTO}')]

Adicionar o produto "${PRODUTO}" no carrinho
    Click Element    locator=//img[@data-image-index='1']
    Wait Until Element Is Visible    locator=${BTN_ADD_CARRINHO}
    Click Button    locator=${BTN_ADD_CARRINHO}


Verificar se o produto "${PRODUTO}" foi adicionado com sucesso
    Wait Until Element Is Visible    locator=//img[contains(@class,'sc-product-image celwidget')]
    Click Element    locator=//a[contains(@data-csa-c-type,'button')]


Remover o produto "${PRODUTO}" do carrinho
    Click Element    locator=(//input[contains(@type,'submit')])[7]


Verificar se o carrinho fica vazio
    Wait Until Page Contains    text=Seu carrinho de compras da Amazon está vazio.


# Gherkin BDD

# Caso de Teste 03 - Adicionar Produto no Carrinho

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"


Quando adicionar o produto "Console Xbox Series S" no carrinho
    Adicionar o produto "Console Xbox Series S" no carrinho


Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso


# Caso de Teste 04 - Remover Produto do Carrinho
E existe o produto "Console Xbox Series S" no carrinho
      Quando adicionar o produto "Console Xbox Series S" no carrinho
    Então o produto "Console Xbox Series S" deve ser mostrado no carrinho

Quando remover o produto "Console Xbox Series S" do carrinho
    Remover o produto "Console Xbox Series S" do carrinho

Então o carrinho deve ficar vazio
    Verificar se o carrinho fica vazio

