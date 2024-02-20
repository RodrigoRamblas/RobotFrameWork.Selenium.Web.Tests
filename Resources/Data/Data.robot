*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Pages/CreateAnAccountPage/CreateAnAccountPage.robot

*** Keywords ***
Preencher Data de Nascimento
    [Arguments]    ${data}
    ${year}    ${month}    ${day}=      Split String                   ${data}    -
    ${day}=    Remover Zero à Esquerda    ${day}
    ${month}=    Remover Zero à Esquerda    ${month}
    Wait Until Page Contains Element    ${DAY_SELECT}                  timeout=10s
    Select From List by Value           ${DAY_SELECT}                  ${day}
    Wait Until Page Contains Element    ${MONTHS_SELECT}               timeout=10s
    Select From List by Value           ${MONTHS_SELECT}               ${month}
    Wait Until Page Contains Element    ${YEARS_SELECT}                timeout=10s
    Select From List by Value           ${YEARS_SELECT}                ${year}

Então devo informar os meus dados create account    
    [Arguments]    ${first_name}    ${last_name}    ${e-mail}    ${password}     ${data}
    Wait Until Page Contains Element    ${TITLE_MR_RADIO_BUTTON}       timeout=10s
    Click Element                       ${TITLE_MR_RADIO_BUTTON}                  
    Input Text                          ${FIRST_NAME_FIELD}            ${first_name}                        
    Input Text                          ${LAST_NAME_FIELD}             ${last_name}                       
    Input Text                          ${EMAIL_FIELD}                 ${e-mail}                        
    Input Text                          ${PASS_WORD_FIELD}             ${password}
    Preencher Data de Nascimento        ${data}
    Click Element                       ${SING_UP_FOR_OUR_NEWSLETTER_CHECK_BOX}
    Click Element                       ${REGISTER_BUTTON}

*** Keywords ***
Remover Zero à Esquerda
    [Arguments]    ${value}
    ${value}=    Convert To Integer    ${value}
    ${value}=    Convert To String     ${value}
    RETURN    ${value}
