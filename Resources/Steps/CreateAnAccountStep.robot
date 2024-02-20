*** Settings ***

Library    SeleniumLibrary
Library    String
Resource   ../Pages/CreateAnAccountPage/CreateAnAccountPage.robot
Resource   ../Data/Data.robot

*** Keywords ***

Então devo informar os meus dados para criar a conta    
    [Arguments]    ${first_name}    ${last_name}    ${e-mail}    ${password}     ${data}
    Então devo informar os meus dados create account    ${first_name}    ${last_name}    ${e-mail}    ${password}     ${data}