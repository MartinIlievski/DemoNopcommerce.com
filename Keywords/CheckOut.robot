*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/AddToCart.robot
Resource          ../TestData/TestData.robot
Resource          ../Elements/CheckOut.robot

*** Keywords ***
CheckOut
    Mouse Over    ${ShoppingCart}
    Wait Until Element Is Visible    ${GoToAddToCartButton}    10
    Click Element    ${GoToAddToCartButton}
    Scroll Element Into View    ${CheckTermsOfService}
    Click Element    ${CheckTermsOfService}
    Click Element    ${CheckOutButton}
    Wait Until Page Contains Element    ${BillingAdrress}
    ${ContinueButtonBillingAddress}    Run Keyword And Return Status    Element Should Be Visible    ${BillingcontunieButton}
    Run Keyword Unless    ${ContinueButtonBillingAddress}     BillingAddress
    Click Element    ${BillingcontunieButton}
    Scroll Element Into View    ${ScrollPaymentInView}
    Wait Until Element Is Visible    ${ShippingContinueButton}
    Click Element    ${ShippingContinueButton}
    Click Element    ${ShippingContinueButton1}
    Scroll Element Into View    ${ScrollPaymentInfoInView}
    Wait Until Element Is Visible    ${PaymentButton}
    Click Element    ${PaymentButton}
    Scroll Element Into View    ${ScrollConfOrderInView}
    Wait Until Element Is Visible    ${PaymentButtonContinue}
    Click Element    ${PaymentButtonContinue}
    Wait Until Element Is Visible    ${ConfirmOrderButton}
    Click Element    ${ConfirmOrderButton}
    Page Should Contain Element    ${Title}    Your order has been successfully processed!
    Wait Until Element Is Visible    ${CompleteOrderButton}
    Click Element    ${CompleteOrderButton}
    Wait Until Element Is Visible    ${LogOutButton}
    Click Element    ${LogOutButton}

BillingAddress
    Select From List By Value    ${CountryId}    11
    Input Text    ${BillingAddressCity}    Bitola
    Input Text    ${BillingStreet}    Todor
    Input Text    ${ZipCode}    7000
    Input Text    ${Mobile}    072368965
    Click Element    ${BillingcontunieButton}

CheckOutGuest
    Mouse Over    ${ShoppingCart}
    Wait Until Element Is Visible    ${GoToAddToCartButton}    10
    Click Element    ${GoToAddToCartButton}
    Scroll Element Into View    ${CheckTermsOfService}
    Click Element    ${CheckTermsOfService}
    Click Element    ${CheckOutButton}
    Wait Until Page Contains Element    ${CheckoutGuestButton}
    Scroll Element Into View    ${CheckoutGuestButton}
    Wait Until Element Is Visible    ${CheckoutGuestButton}
    Click Element    ${CheckoutGuestButton}
    Wait Until Page Contains Element    ${BillingFirstName}
    Wait Until Element Is Enabled    ${BillingFirstName}
    Wait Until Keyword Succeeds    30    10    Input Text    ${BillingFirstName}    ${UserName}
    Wait Until Element Is Enabled    ${BillingLastName}
    Wait Until Keyword Succeeds    30    10    Input Text    ${BillingLastName}    ${UserLastName}
    Wait Until Element Is Enabled    ${EmailAddressInput}
    Wait Until Keyword Succeeds    30    10    Input Text    ${EmailAddressInput}    @{ValidUserName}[0]
    Run Keyword    BillingAddress
    Click Element    ${BillingcontunieButton}
    Scroll Element Into View    ${ScrollPaymentInView}
    Wait Until Element Is Visible    ${ShippingContinueButton}
    Click Element    ${ShippingContinueButton}
    Wait Until Element Is Visible    ${ShippingContinueButton1}
    Click Element    ${ShippingContinueButton1}
    Scroll Element Into View    ${ScrollPaymentInfoInView}
    Wait Until Element Is Visible    ${PaymentButton}
    Click Element    ${PaymentButton}
    Scroll Element Into View    ${ScrollConfOrderInView}
    Wait Until Element Is Visible    ${PaymentButtonContinue}
    Click Element    ${PaymentButtonContinue}
    Wait Until Element Is Visible    ${ConfirmOrderButton}
    Click Element    ${ConfirmOrderButton}
    Page Should Contain Element    ${Title}    Your order has been successfully processed!
    Wait Until Element Is Visible    ${CompleteOrderButton}
    Click Element    ${CompleteOrderButton}
