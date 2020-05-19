*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/WishList.robot

*** Keywords ***
WishList
    Wait Until Element Is Visible    ${Apparel}
    Mouse Over    ${Apparel}
    Wait Until Element Is Enabled    ${Accessories}
    Click Element    ${Accessories}
    Scroll Element Into View    ${AddToWishListButton}
    Wait Until Element Is Enabled    ${AddToWishListButton}
    Click Element    ${AddToWishListButton}
    Wait Until Element Is Visible    ${BarNotification}
    Page Should Contain Element    ${BarNotificationText}    The product has been added to your
    Click Element    ${BarNotificationSpan}
    Wait Until Element Is Visible    ${WishListButton2}
    Click Element    ${WishListButton2}
    Click Element    ${AddToCartButtonFromWish}
    Click Element    ${AddToCartButtonFromWish2}
