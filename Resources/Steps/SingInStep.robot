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

