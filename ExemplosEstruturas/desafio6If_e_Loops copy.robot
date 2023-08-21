*** Settings ***
Library    Collections

*** Test Cases ***
Test List Processing
    ${numbers}    Create List    2    5    8    10    15
    Process List    ${numbers}

*** Keywords ***
Process List
    [Arguments]    ${number_list}
    FOR    ${number}    IN    @{number_list}
        Run Keyword If    ${number} == 5 or ${number} == 10
        ...    Log To Console    Eu sou o número ${number}!
        ...    ELSE
        ...    Log To Console    Eu não sou o número 5 e nem o 10!
    END
