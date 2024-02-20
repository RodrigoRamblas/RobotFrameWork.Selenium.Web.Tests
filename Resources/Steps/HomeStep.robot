*** Settings ***

Library    SeleniumLibrary
Resource   ../Pages/HomePage/HomePage.robot

*** Keywords ***
#---DADO--


#---QUANDO--
Quando clico no botão Sign in
    Click Element                       ${SING_IN_BUTTON}  

Quando clico no botão Contact us
    Click Element                       ${CONTACT_US_BUTTON}   

