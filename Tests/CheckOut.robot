*** Settings ***
Suite Setup       OpenBrowserOnGivenUrl
Suite Teardown    CloseBrowser
Resource          ../Keywords/OpenBrowserOnGivenUrl.robot
Resource          ../Keywords/CloseBrowser.robot
Resource          ../Keywords/LogIn.robot
Resource          ../Keywords/CheckOut.robot
Resource          ../Keywords/AddToCart.robot
Resource          ../Keywords/ClearAddToCart.robot

*** Test Cases ***
CheckOutLogInUser
    LogInWithValidData
    ClearAddToCart
    AddToCartUser_01
    CheckOut

CheckOutGuest
    AddToCartUser_01
    CheckOutGuest
