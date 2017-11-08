*** Settings ***
Resource  ./PageObjects/LandingPage.robot
Resource  ./PageObjects/SearchBar.robot
Resource  ./PageObjects/SearchResult.robot
Resource  ./PageObjects/Product.robot
Resource  ./PageObjects/Cart.robot
Resource  ./PageObjects/Signin.robot

*** Variables ***

*** Keywords ***
Search for product
    [Arguments]  ${product_name}
    LandingPage.Page Load
    SearchBar.Search  ${product_name}

Select First Product from Search Results
    [Arguments]  ${product_name}
    SearchResult.Click First Searched Product  ${product_name}

Add Selected Product to Cart
    [Arguments]  ${product_name}
    Product.Add to Cart  ${product_name}

Check out
    Cart.Check out

Verify Signin Page Loaded
    Signin.Verify Page