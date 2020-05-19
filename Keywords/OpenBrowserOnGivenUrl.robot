*** Settings ***
Library           SeleniumLibrary
Resource          ../URL/nopCommerce.robot

*** Keywords ***
OpenBrowserOnGivenUrl
    Open Browser    ${demo}    Chrome
    Maximize Browser Window
