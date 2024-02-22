*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Pages/CreateAnAccountPage/CreateAnAccountPage.robot
Resource          ../Pages/HomePage/HomePage.robot

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

Preencher os dados para compra
    [Arguments]    ${company}    ${address}    ${address_line_2}    ${city}     ${state}    ${zip_postal_code}    ${country}    ${home_phone}    ${mobile_phone}    ${additional_information}    ${please_assign_an_addrress_title_for_future_reference}
    Wait Until Page Contains Element    ${COMPANY_FIELD}                                                        timeout=10s
    Input Text                          ${COMPANY_FIELD}                                                        ${company}
    Input Text                          ${ADDRESS_FIELD}                                                        ${address}
    Input Text                          ${ADDRESS_LINE_2_FIELD}                                                 ${address_line_2}
    Input Text                          ${CITY_FIELD}                                                           ${city}
    Select From List by Value           ${STATE_FIELD}                                                          2
    Input Text                          ${ZIP_POSTAL_CODE_FIELD}                                                ${zip_postal_code}
    #Input Text                          ${COUNTRY_FIELD}                                                        ${country}
    Input Text                          ${HOME_PHONE_FIELD}                                                     ${home_phone}
    Input Text                          ${MOBILE_PHONE_FIELD}                                                   ${mobile_phone}
    Input Text                          ${ADDITIONAL_INFORMATION_FIELD}                                         ${additional_information}
    Input Text                          ${PLEASE_ASSING_AN_ADDRESS_TITLE_FOR_FUTURE_REFERENCE_FIELD}            ${please_assign_an_addrress_title_for_future_reference}

Remover Zero à Esquerda
    [Arguments]    ${value}
    ${value}=    Convert To Integer    ${value}
    ${value}=    Convert To String     ${value}
    RETURN    ${value}



