*** Settings ***
Documentation  Testing Amazon.com web site
Library  Selenium2Library
Resource  ../Resources/Common.robot
Resource  ../Resources/Amazon.robot

Suite Setup  Common.Begin Suite
Suite Teardown  Common.End Suite
Test Setup  Common.Begin Test
Test Teardown  Common.End Test

*** Variables ***
${BROWSER}  chrome
${PRODUCT_NAME}  Python
*** Test Cases ***
User must login befor check out
    [Documentation]  Some basic operation checking
    [Tags]  amazon

    Amazon.Search for product  ${PRODUCT_NAME}
    Amazon.Select First Product from Search Results  ${PRODUCT_NAME}
    Amazon.Add Selected Product to Cart  ${PRODUCT_NAME}
    Amazon.Check out
    Amazon.Verify Signin Page Loaded