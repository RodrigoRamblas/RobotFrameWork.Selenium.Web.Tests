*** Settings ***

Library    SeleniumLibrary
Resource   ../Pages/HomePage/HomePage.robot
Resource   ../Data/Data.robot

*** Keywords ***
#---DADO--


#---QUANDO--
Quando vejo na barra de navegação com as opções ${contact_us} e ${sing_in}
    Element Text Should Be          ${CONTACT_US_BUTTON}          ${contact_us}
    Element Text Should Be          ${SING_IN_BUTTON}             ${sing_in}

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

E salvo a minhha compra
    Wait Until Element Is Visible               ${SAVE} 
    Click Element                               ${SAVE} 
    Wait Until Element Is Visible               ${PROCEED_TO_CHECKOUT_ADDRESS} 
    Click Element                               ${PROCEED_TO_CHECKOUT_ADDRESS}   
    Wait Until Element Is Visible               ${I_AGREE_TO_THE_TERMS_OF_SERVICE_AND_WILL_ADHERE_TO_THEM_UNCONDITIONALLY} 
    Click Element                               ${I_AGREE_TO_THE_TERMS_OF_SERVICE_AND_WILL_ADHERE_TO_THEM_UNCONDITIONALLY} 
    Wait Until Element Is Visible               ${PROCEED_TO_CHECKOUT_SHIPPING}
    Click Element                               ${PROCEED_TO_CHECKOUT_SHIPPING}
    Wait Until Element Is Visible               ${PAY_BY_BANK_WIRE} 
    Click Element                               ${PAY_BY_BANK_WIRE} 
    Wait Until Element Is Visible               ${I_CONFIRM_MY_ORDER}
    Click Element                               ${I_CONFIRM_MY_ORDER}

E verifico se a mensagem de compra com sucesso
    Wait Until Page Contains    ${YOUR_ORDER_ON_MY_SHOP_IS_COMPLETE}    timeout=10s
    