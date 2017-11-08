*** Settings ***
Documentation  Add the product to cart
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Add to Cart
    [Arguments]  ${product_name}
    Verify Product Page  ${product_name}
    Click Add to Cart

Verify Product Page
    [Arguments]  ${product_name}
    wait until page contains  Back to search results for "${product_name}"

Click Add to Cart
    click button  id=add-to-cart-button