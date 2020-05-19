*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Elements/AddToCart.robot

*** Keywords ***
ClearAddToCart
    Mouse Over    ${ShoppingCart}
    ${ShoppingCartText}    Run Keyword And Return Status    Element Text Should Be    //*[@id="flyout-cart"]/div/div    You have no items in your shopping cart.
    Run Keyword Unless    ${ShoppingCartText}    ClearCart

ClearCart
    Wait Until Element Is Visible    ${GoToAddToCartButton}
    Click Element    ${GoToAddToCartButton}
    Wait Until Page Contains Element    ${RemoveCheckButton}
    Scroll Element Into View    ${GiftWrappingIntoView}
    ${No.OfItemsInCart}    Get Text    ${ShoppingCart}
    ${RemoveBrac}    Remove String    ${No.OfItemsInCart}    ()
    FOR    ${i}    IN RANGE    1    ${RemoveBrac}+1
        Click Element    (${RemoveCheckButton})[${i}]
    END
    Click Element    ${UpdateShoppCartButton}
    Click Element    ${HeaderLogo}
