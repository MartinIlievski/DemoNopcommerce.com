*** Settings ***
Suite Setup       OpenBrowserOnGivenUrl
Suite Teardown    CloseBrowser
Resource          ../Keywords/MyAccount.robot
Resource          ../Keywords/LogIn.robot
Resource          ../Keywords/OpenBrowserOnGivenUrl.robot
Resource          ../Keywords/CloseBrowser.robot

*** Test Cases ***
ChangePersonalDetails
    LogInWithValidData
    ChangePersonalDetails

ChangeAddress
    LogInWithValidData
    ChangeAddress

ChangePassword
    LogInWithValidData
    ChangePassword
