*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/AddToCart.robot

*** Variables ***

*** Keywords ***
AddToCartUser_02
    Wait Until Page Contains Element    ${FooterAssert}
    Wait Until Element Is Visible    ${SearchField}
    Click Element    ${SearchField}
    Input Text    ${SearchField}    Computers
    Click Element    ${SearcFieldButton}
    Wait Until Page Contains Element    ${ComputersLeftMenu}
    Click Element    ${ComputersLeftMenu}
    Scroll Element Into View    ${ScrollAppleInView}
    Click Element    ${AppleProductButton}
    Wait Until Page Contains Element    ${FooterAssert}
    Scroll Element Into View    ${ScrolIntoViewApple}
    Wait Until Element Is Visible    ${AddToCartButtonApple}    15
    Click Element    ${AddToCartButtonApple}
    sleep    2
    Scroll Element Into View    ${ScrollProductDetailsInView}
    Wait Until Element Is Visible    ${AddToCartButtonCont}    10
    Click Element    ${AddToCartButtonCont}
    Wait Until Element Is Visible    ${BarNotificationApple}
    Page Should Contain Element    ${BarNotificationProductAddToCart}    The product has been added to your

AddToCartUser_01
    Mouse Over    ${ElectronicsMenu}
    Wait Until Element Is Visible    ${CellPhoneSubMenu}
    Click Element    ${CellPhoneSubMenu}
    Wait Until Element Is Visible    ${PageTitle}    10
    Page Should Contain Element    ${PageTitle}
    Select From List By Value    ${OrderByZ-A}    https://demo.nopcommerce.com/cell-phones?orderby=6
    Scroll Element Into View    ${ScrollToView}
    Wait Until Element Is Visible    ${HtcOneM8Button}
    Click Element    ${HtcOneM8Button}
    Page Should Contain Element    ${HtcProductDetails}    HTC One M8 Android L 5.0 Lollipop
    Click Element    ${AddToCartButtonHtc}
    Wait Until Element Is Visible    ${BarNotificationAssert}
    Page Should Contain Element    ${BarNotificationProductAddToCart}    The product has been added to your
    Click Element    ${BarNotificationButton}
    Page Should Contain Element    ${HtcAssert}    HTC One M8 Android L 5.0 Lollipop
