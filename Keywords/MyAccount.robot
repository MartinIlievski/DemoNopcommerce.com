*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/MyAccount.robot

*** Keywords ***
ChangePersonalDetails
    Wait Until Element Is Visible    ${MyAccountButton}
    Click Element    ${MyAccountButton}
    Wait Until Page Contains Element    ${TitleMyAccount}
    Click Button    ${RadioButtonFemale}
    Wait Until Keyword Succeeds    30s    10s    Input Text    ${FNMyAccount}    Marija
    Wait Until Keyword Succeeds    30s    10s    Input Text    ${LNMyAccount}    Ilievska
    Wait Until Keyword Succeeds    30s    10s    Select From List By Value    ${DateOfBirth}    29
    Wait Until Keyword Succeeds    30s    10s    Select From List By Value    ${MonthOFBirth}    9
    Wait Until Keyword Succeeds    30s    10s    Select From List By Value    ${YearOfBirth}    1992
    Wait Until Keyword Succeeds    30s    10s    Input Text    ${EmailField}    marija@test.com
    Wait Until Keyword Succeeds    30s    10s    Input Text    ${CompanyField}    Marbel
    Select Checkbox    ${NewsletterCheckBox}
    Click Element    ${SaveButton}

ChangeAddress
    Wait Until Keyword Succeeds    30s    10s    Click Element    ${MyAccountButton}
    Wait Until Keyword Succeeds    30s    10s    Click Element    ${AddressLeftMenu}
    Wait Until Element Is Visible    ${EditButton}
    Click Element    ${EditButton}
    Wait Until Page Contains Element    ${TitleEditAddress}
    Wait Until Keyword Succeeds    30s    10s    Input Text    ${FNChangeAddress}    Marija
    Wait Until Keyword Succeeds    30s    10s    Input Text    ${LNChangeAddress}    Ilievska
    Wait Until Keyword Succeeds    30s    10s    Input Text    ${EmailChange}    marija@test.com
    Wait Until Keyword Succeeds    30s    10s    Input Text    ${NameCompanyChange}    Marbel
    Wait Until Keyword Succeeds    30s    10s    Input Text    ${MobileChange}    024555666
    Click Element    ${SaveButtonAddress}

ChangePassword
    Wait Until Keyword Succeeds    30s    10s    Click Element    ${MyAccountButton}
    Wait Until Keyword Succeeds    30s    10s    Click Element    ${ChangePassButton}
    Wait Until Keyword Succeeds    30s    10s    Input Password    ${OldPassFieldInput}    martinilievski
    Wait Until Keyword Succeeds    30s    10s    Input Password    ${NewPassFieldInput}    martin
    Wait Until Keyword Succeeds    30s    10s    Input Password    ${ConfNewPassFieldInput}    martin
    Wait Until Keyword Succeeds    30s    10s    Click Element    ${ConfirmChangePassButton}
