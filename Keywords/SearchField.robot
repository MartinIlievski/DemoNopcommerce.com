*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/SearchField.robot

*** Keywords ***
SearchExistingItem
    Input Text    ${SearchFieldInput}    len
    Wait Until Element Is Visible    ${Lenovo}    15
    Click Element    ${Lenovo}
    Wait Until Element Is Visible    ${ProductDetails}
    Page Should Contain Element    ${ProductDetails}    Lenovo IdeaCentre 600 All-in-One PC

SearchNonExistingItem
    Input Text    ${SearchFieldInput}    truck
    Click Element    ${SearchFieldButton}
    Page Should Contain Element    ${InfoForResults}    No products were found that matched your criteria.
