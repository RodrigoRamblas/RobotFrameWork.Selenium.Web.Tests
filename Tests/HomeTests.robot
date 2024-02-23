
*** Settings ***
Library           SeleniumLibrary
Library           FakerLibrary    locale=pt_BR
Test Setup        Set Test Environment    chrome    prod
Test Teardown     Close All Browsers
Resource          ../Config/Config.robot
Resource          ../Resources/Steps/HomeStep.robot



*** Test Cases ***

CT01: Verificacr a barra de vavegação da tela Home
    [Tags]      CT01    
    Quando vejo na barra de navegação com as opções Contact us e Sign in

CT02: Clicar no botão Contact Us
    [Tags]      CT02
    Quando clico no botão Contact us

CT03: Clicar no botão Woman
    [Tags]      CT03
    E clico em Women no menu

