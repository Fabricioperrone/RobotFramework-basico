*** Settings ***
Documentation        Crie uma variável do tipo DICIONÁRIO na seção de variáveis globais que contenha
...                  nela os meses do ano e, para cada mês, informe o número de dias desse mês;
...                  Crie um teste que imprima no Console (Log To Console) 
...                  cada mês e a sua respectiva quantidade de dias.



*** Variables ***


&{DIAS_MESES_ANO}           janeiro=31
...                         fevereiro=28
...                         março=31
...                         abril=30
...                         maio=31
...                         junho=30
...                         julho=31
...                         agosto=31
...                         setembro=30
...                         outubro=31
...                         novembro=30
...                         dezembro=31

*** Test Cases ***
Caso de teste 02:
    Log To Console    \n
    Exibe dicionário com meses do ano e número de dias de cada mês


*** Keywords ***
Exibe dicionário com meses do ano e número de dias de cada mês
    Log To Console    Exibe meses do ano e números de dias de cada mês:
    Log To Console    Janeiro tem ${DIAS_MESES_ANO.janeiro} dias!
    Log To Console    fevereiro tem ${DIAS_MESES_ANO.fevereiro} dias!
    Log To Console    março tem ${DIAS_MESES_ANO.março} dias!
    Log To Console    abril tem ${DIAS_MESES_ANO.abril} dias!
    Log To Console    maio tem ${DIAS_MESES_ANO.maio} dias!
    Log To Console    Junho tem ${DIAS_MESES_ANO.junho} dias!
    Log To Console    Julho tem ${DIAS_MESES_ANO.julho} dias!
    Log To Console    agosto tem ${DIAS_MESES_ANO.agosto} dias!
    Log To Console    setembro tem ${DIAS_MESES_ANO.setembro} dias!
    Log To Console    outubro tem ${DIAS_MESES_ANO.outubro} dias!
    Log To Console    novembro tem ${DIAS_MESES_ANO.novembro} dias!
    Log To Console    dezembro tem ${DIAS_MESES_ANO.dezembro} dias!
