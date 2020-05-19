*** Settings ***
Resource          ../Keywords/LogIn.robot
Resource          ../Keywords/OpenBrowserOnGivenUrl.robot
Resource          ../Keywords/CloseBrowser.robot

*** Test Cases ***
SuccesfulLogIn
    [Setup]    OpenBrowserOnGivenUrl
    LogInWithValidData
    [Teardown]    CloseBrowser

UnsuccesfulLogIn
    [Setup]    OpenBrowserOnGivenUrl
    [Template]    LogInWithInvalidData
    ${EMPTY}    1234
    martin09@test.com    jahdah
    dks@yahoo.com.mk    ${EMPTY}
    ${EMPTY}    ${EMPTY}
    $4%@test.com    @#*knk
    [Teardown]    CloseBrowser
