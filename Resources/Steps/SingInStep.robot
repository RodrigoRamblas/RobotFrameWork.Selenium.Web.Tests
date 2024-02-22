*** Settings ***

Library    SeleniumLibrary
Resource   ../Pages/SingInPage/SingInPage.robot

*** Keywords ***
#---DADO--


#---QUANDO--


#---E--
E preencho o campo create e-mail address
    [Arguments]    ${email}
    Input Text    ${CREATE_EMAIL_ADDRESS_FIELD}    ${email}

E clico em Create an account
    Click Element    ${CREATE_AN_ACCOUNT_BUTTON}

E preencho um e-mail inválido      
    [Arguments]    ${email_inválido}
    Input Text    ${CREATE_EMAIL_ADDRESS_FIELD}     ${email_inválido}

#---E--
Então verifico a mensagem Invalid email address
    Wait Until Page Contains    ${INVALID_EMAIL_ADDRESS_TEXT}    timeout=10s

