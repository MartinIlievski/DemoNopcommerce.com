*** Settings ***
Suite Setup       OpenBrowserOnGivenUrl
Suite Teardown    CloseBrowser
Test Setup
Test Teardown
Resource          ../Keywords/WishList.robot
Resource          ../Keywords/LogIn.robot
Resource          ../Keywords/OpenBrowserOnGivenUrl.robot
Resource          ../Keywords/CloseBrowser.robot

*** Test Cases ***
WithLogInUser
    LogInWithValidData
    WishList

Guest
    WishList
