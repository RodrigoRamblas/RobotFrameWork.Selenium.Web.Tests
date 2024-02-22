
*** Settings ***
Library           SeleniumLibrary
Library           FakerLibrary    locale=pt_BR
Library           ../Resources/Helper/RandomHelper.py
Test Setup        Set Test Environment    chrome    prod
Test Teardown     Close All Browsers
Resource          ../Config/Config.robot
Resource          ../Resources/Steps/HomeStep.robot
Resource          ../Resources/Steps/SingInStep.robot
Resource          ../Resources/Helper/FakerHelper.robot
Resource          ../Resources/Steps/CreateAnAccountStep.robot


*** Test Cases ***
CT01:Realizar a compra de um produto por uma das abas do site (Women, Dresses, T-Shirts)
    [Documentation]     Realizar a compra de um produto por uma das abas do site (Women, Dresses, T-Shirts)
    [Tags]              CT01
    ${Email}                                                          Generate Random Email
    ${First_Name}                                                     Generate Random Name
    ${Last_Name}                                                      Generate Random Last Name
    ${Password}                                                       Generate Random Password    
    ${Data}                                                           Generate Random Data
    ${Company}                                                        Generate Random Company             
    ${Address}                                                        Generate Random Adddress                                                     
    ${Address_line_2}                                                 Generate Random Adddress 
    ${City}                                                           Generate Random City  
    ${State}                                                          Get Us States
    ${Zip_postal_code}                                                Generate Postal Code
    ${Country}                                                        Generate Random Country 
    ${Home_phone}                                                     Generate Random Phone Number
    ${Mobile_phone}                                                   Generate Random Phone Number
    ${Additional_information}                                         Generate Random Text
    ${Please_assign_an_addrress_title_for_future_reference}           Generate Random Name
    Quando clico no botão Sign in
    E preencho o campo create e-mail address      ${Email}
    E clico em Create an account
    Então devo informar os meus dados para criar a conta    ${First_Name}    ${Last_Name}   ${Email}    ${Password}    ${Data}
    E clico em Women no menu
    E compro a primeira roupa
    E preencho o meu endereço e outros dados para compra    ${Company}    ${Address}    ${Address_line_2}    ${City}     ${State}    ${Zip_postal_code}    ${Country}    ${Home_phone}    ${Mobile_phone}    ${Additional_information}    ${Please_assign_an_addrress_title_for_future_reference}
    E salvo a minhha compra
    E verifico se a mensagem de compra com sucesso

