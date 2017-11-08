*** Settings ***
Documentation  Verify Search Results & click the first product
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Click First Searched Product
    [Arguments]  ${product_name}
    Verify Search Completd  ${product_name}
    Click Product Link

Verify Search Completd
    [Arguments]  ${product_name}
    wait until page contains  results for "${product_name}"

Click Product Link
    [Documentation]  Click the first product in the search result
    click link  css=#result_0 a.s-access-detail-page