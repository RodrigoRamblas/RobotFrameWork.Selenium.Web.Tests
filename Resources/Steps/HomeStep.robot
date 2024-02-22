*** Settings ***

Library    SeleniumLibrary
Resource   ../Pages/HomePage/HomePage.robot
Resource   ../Data/Data.robot

*** Keywords ***
#---DADO--


#---QUANDO--
Quando clico no botão Sign in
    Click Element                       ${SING_IN_BUTTON}  

Quando clico no botão Contact us
    Click Element                       ${CONTACT_US_BUTTON}   


E clico em Women no menu
    Click Element                       ${WOMAN}

E clico em Dresses no menu
    Click Element                       ${DRESSES}

E clico em T-Shits no menu
    Click Element                       ${TSHIRTS}

E clico em Blog no menu
    Click Element                       ${BLOG}

E compro a primeira roupa
    Wait Until Element Is Visible    ${PRIMEIRA_ROUPA}
    Mouse Over    ${PRIMEIRA_ROUPA}

    Wait Until Element Is Visible    ${ADD_TO_COMPARE}
    Click Element    ${ADD_TO_COMPARE}

    Wait Until Element Is Visible    ${COMPARE}
    Click Element    ${COMPARE}

    Wait Until Element Is Visible    ${ADD_TO_CART}
    Click Element    ${ADD_TO_CART}

    Wait Until Element Is Visible    ${PROCEED_TO_CHECKOUT}
    Click Element    ${PROCEED_TO_CHECKOUT}

    Wait Until Element Is Visible    ${PROCEED_TO_CHECKOUT_END}
    Click Element    ${PROCEED_TO_CHECKOUT_END}

E preencho o meu endereço e outros dados para compra
    [Arguments]    ${company}    ${address}    ${address_line_2}    ${city}     ${state}    ${zip_postal_code}    ${country}    ${home_phone}    ${mobile_phone}    ${additional_information}    ${please_assign_an_addrress_title_for_future_reference}
    Preencher os dados para compra   ${company}    ${address}    ${address_line_2}    ${city}     ${state}    ${zip_postal_code}    ${country}    ${home_phone}    ${mobile_phone}    ${additional_information}    ${please_assign_an_addrress_title_for_future_reference}