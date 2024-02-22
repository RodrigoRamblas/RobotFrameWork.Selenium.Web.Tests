*** Settings ***
Documentation     Arquivo de configuração da URL base
Library           SeleniumLibrary

*** Variables ***
${BASE_URL_PROD}         http://www.automationpractice.pl
${BASE_URL_QA}           http://www.qa.automationpractice.pl
${BASE_URL_DEV}          http://www.dev.automationpractice.pl

*** Keywords ***
Set Test Environment
    [Arguments]    ${browser}    ${environment}
    ${base_url}=    Run Keyword If    '${environment}' == 'prod'    Get Variable Value    ${BASE_URL_PROD}    ELSE IF    '${environment}' == 'qa'    Get Variable Value    ${BASE_URL_QA}    ELSE    Get Variable Value    ${BASE_URL_DEV}
    Open Browser    ${base_url}    ${browser}
    #Open Browser     ${base_url}    headlesschrome    options=add_argument("--no-sandbox")    options=add_argument("--disable-dev-shm-usage")
    Maximize Browser Window
