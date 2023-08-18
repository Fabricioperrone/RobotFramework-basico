*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BROWSER}               chrome
${URL}                   https://www.amazon.com.br/


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
    Click Element     locator=//span[@class='a-button a-spacing-small a-button-primary a-button-icon natc-enabled'][contains(.,'Adicionar ao carrinho')]

Verificar se o produto "${PRODUTO}" foi adicionado com sucesso
    Wait Until Element Is Visible    locator=//img[contains(@class,'sc-product-image celwidget')]
    Click Element    locator=//a[contains(@data-csa-c-type,'button')]


Remover o produto "${PRODUTO}" do carrinho
    Click Element    locator=(//input[contains(@type,'submit')])[7]


Verificar se o carrinho fica vazio
    Wait Until Page Contains    text=Seu carrinho de compras da Amazon está vazio.



