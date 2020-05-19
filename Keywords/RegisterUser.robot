*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/RegisterPage.robot
Resource          ../TestData/TestData.robot

*** Keywords ***
SuccefsulRegisterUser
    Click Element    ${RegisterUserButton}
    Wait Until Page Contains Element    ${PageTitle}    10    crash
    Wait Until Page Contains Element    ${FooterAssert}
    Click Element    ${RadioButtonMale}
    Wait Until Page Contains Element    ${FooterAssert}
    Wait Until Element Is Enabled    ${InputFieldFN}    10
    Input Text    ${InputFieldFN}    ${UserName}
    Wait Until Element Is Enabled    ${InputFieldLN}    10
    Input Text    ${InputFieldLN}    ${UserLastName}
    Select From List By Value    ${ListDay}    11
    Select From List By Value    ${ListMonth}    8
    Select From List By Value    ${ListYear}    1990
    Input Text    ${InputFieldEmail}    @{ValidUserName}[5]
    Input Text    ${InputFieldCompany}    Stone
    Click Element    ${RadioButtonNewsletter}
    Input Password    ${InputFieldPass}    ${ValidPass}
    Input Password    ${InputFieldConfPass}    ${ValidPass}
    Click Element    ${RegisterButton}
    Element Should Not Be Visible    ${ExistingEmailMess}    existing e-mail
    Wait Until Element Is Enabled    ${RegisterContButton}    10
    Click Element    ${RegisterContButton}
    Wait Until Element Is Enabled    ${LogOutUser}    10
    Click Element    ${LogOutUser}

UnsuccesfulRegisterUser
    Click Element    ${RegisterUserButton}
    Wait Until Page Contains Element    ${PageTitle}
    Wait Until Page Contains Element    ${FooterAssert}
    Scroll Element Into View    ${RegisterButton}
    Click Element    ${RegisterButton}
    Run Keyword If    '${ExistingEmailMess}' == 'TRUE'    Element Should Be Visible    ${ExistingEmailMess}    existing e-mail
    Run Keyword If    '${FirsNameError}' == 'TRUE'    Element Should Be Visible    ${FirsNameError}    First name is required.
    Run Keyword If    '${LastNameError}' == 'TRUE'    Element Should Be Visible    ${LastNameError}    Last name is required.
    Run Keyword If    '${EmailError}' == 'TRUE'    Element Should Be Visible    ${EmailError}    Email is required.
    Run Keyword If    '${PassError}' == 'TRUE'    Element Should Be Visible    ${PassError}    Password is required.
    Run Keyword If    '${PassConfError}' == '${PassConfError}'    Element Should Be Visible    ${PassConfError}    Password is required.
