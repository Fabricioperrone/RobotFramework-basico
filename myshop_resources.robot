*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}                 http://www.automationpractice.pl/index.php
${LOGOTIPO}            //img[contains(@class,'logo img-responsive')]
${MENU_T-SHIRTS}             (//a[@href='http://www.automationpractice.pl/index.php?id_category=5&controller=category'][contains(.,'T-shirts')])[2]
${TITLE_T-SHIRTS}             //span[@class='cat-name'][contains(.,'T-shirts')]
# ${TEXTO_TITLE-T-SHIRTS}        T-shirts - My Shop
*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome  options=add_experimental_option("detach", True)
    Maximize Browser Window


# Fechar o navegador
#     Close Browser

Acessar a home page do site Myshop
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGOTIPO}

Entrar no menu "T-shirts"
    Click Element    locator=${MENU_T-SHIRTS}
    

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${TITLE_T-SHIRTS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}