*** Settings ***
Resource          ../Keywords/RegisterUser.robot
Resource          ../Keywords/OpenBrowserOnGivenUrl.robot
Resource          ../Keywords/CloseBrowser.robot

*** Test Cases ***
SuccefsulRegisterUser
    [Setup]    OpenBrowserOnGivenUrl
    SuccefsulRegisterUser
    [Teardown]    CloseBrowser

UnsuccesfulRegisterUser
    [Setup]    OpenBrowserOnGivenUrl
    UnsuccesfulRegisterUser
    [Teardown]    CloseBrowser
