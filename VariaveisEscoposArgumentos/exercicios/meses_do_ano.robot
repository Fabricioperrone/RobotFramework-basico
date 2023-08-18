*** Settings ***
Documentation   esse teste exibe em uma lista dos meses do ano
Library         String
*** Variables ***
@{MESES_DO_ANO}    
...                janeiro
...                fevereiro  
...                março      
...                abril     
...                maio  
...                junho  
...                julho  
...                agosto  
...                setembro  
...                outubro  
...                novembro  
...                dezembro

*** Test Cases ***
Caso de teste 01:
    Log To Console  \n 
    Exibe lista meses do ano 


*** Keywords ***
Exibe lista meses do ano
#    Log    Exibe lista meses do ano ${MESES_DO_ANO}
   Log To Console    Exibe meses do ano:
   Log To Console    ${MESES_DO_ANO}[0]
   Log To Console    ${MESES_DO_ANO}[01]
   Log To Console    ${MESES_DO_ANO}[02]
   Log To Console    ${MESES_DO_ANO}[03]
   Log To Console    ${MESES_DO_ANO}[04]
   Log To Console    ${MESES_DO_ANO}[05]
   Log To Console    ${MESES_DO_ANO}[06]
   Log To Console    ${MESES_DO_ANO}[07]
   Log To Console    ${MESES_DO_ANO}[08]
   Log To Console    ${MESES_DO_ANO}[09]
   Log To Console    ${MESES_DO_ANO}[10]
   Log To Console    ${MESES_DO_ANO}[11]