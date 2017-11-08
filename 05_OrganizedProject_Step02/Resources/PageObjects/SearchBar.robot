*** Settings ***
Documentation  Search specific product on search bar
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Search
    [Arguments]  ${product_name}
    Enter Search Term  ${product_name}
    Submit Search

Enter Search Term
    [Arguments]  ${product_name}
    input text  id=twotabsearchtextbox  ${product_name}

Submit Search
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input