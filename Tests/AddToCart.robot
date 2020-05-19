*** Settings ***
Resource          ../Keywords/AddToCart.robot
Resource          ../Keywords/OpenBrowserOnGivenUrl.robot
Resource          ../Keywords/CloseBrowser.robot
Resource          ../Keywords/LogIn.robot
Resource          ../Keywords/ClearAddToCart.robot

*** Test Cases ***
AddToCartLogInUser
    [Setup]    OpenBrowserOnGivenUrl
    [Template]
    LogInWithValidData
    ClearAddToCart
    AddToCartUser_01
    AddToCartUser_02
    [Teardown]    CloseBrowser

AddToCartGuest
    [Setup]    OpenBrowserOnGivenUrl
    AddToCartUser_01
    AddToCartUser_02
    [Teardown]    CloseBrowser
