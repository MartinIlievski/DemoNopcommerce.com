*** Settings ***
Library           SeleniumLibrary
Resource          ../TestData/TestData.robot
Resource          ../Elements/LogInPage.robot

*** Keyword ***
LogInWithValidData
    Click Element    ${LogInUserButton}
    Page Should Contain Element    ${LogInTitle}    Welcome, Please Sign In!
    Wait Until Page Contains Element    ${FooterAssert}
    sleep    2
    Wait Until Element Is Enabled    ${InputEmailField}    10
    Input Text    ${InputEmailField}    @{ValidUserName}[4]
    Wait Until Element Is Enabled    ${InputPassField}    10
    Input Text    ${InputPassField}    ${ValidPass}
    Scroll Element Into View    ${ScrollButtonsInView}
    Click Element    ${LogInButton}
    Element Should Not Be Visible    ${MessageValidationForLogIn}
    Wait Until Element Is Visible    ${TitleLogIn}    10
    Page Should Contain Element    ${TitleLogIn}

LogInWithInvalidData
    [Arguments]    ${UserName}    ${Pass}
    Click Element    ${LogInUserButton}
    Page Should Contain Element    ${LogInTitle}    Welcome, Please Sign In!
    Wait Until Page Contains Element    ${FooterAssert}
    sleep    2
    Wait Until Element Is Enabled    ${InputEmailField}    10
    Input Text    ${InputEmailField}    ${UserName}
    Wait Until Element Is Enabled    ${InputPassField}    10
    Input Text    ${InputPassField}    ${Pass}
    Scroll Element Into View    ${ScrollButtonsInView}
    Click Element    ${LogInButton}
    Wait Until Page Contains Element    ${FooterAssert}
    ${LogInErrorMessage}    Run Keyword And Return Status    Element Text Should Be    ${MessageValidationForLogIn}    Login was unsuccessful. Please correct the errors and try again.
    Run Keyword If    ${LogInErrorMessage}    Page Should Contain Element    ${LogInErrorMessage}    Login was unsuccessful. Please correct the errors and try again.
    ${WrongEmail}    Run Keyword And Return Status    Element Text Should Be    ${MessageValidationForEmail}    Wrong email
    Run Keyword If    ${WrongEmail}    Page Should Contain Element    ${WrongEmail}    Wrong email
