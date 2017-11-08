*** Settings ***
Documentation    Testing amazon.com web site
Library  Selenium2Library


*** Variables ***
${BROWSER}  chrome
${PRODUCT_NAME}  Python
*** Test Cases ***
User must login befor check out
    [Documentation]  Some basic operation checking
    [Tags]  amazon
    Open browser  about:blank  ${BROWSER}
    go to  https://www.amazon.com
    wait until page contains  Try Prime
    input text  id=twotabsearchtextbox  ${PRODUCT_NAME}
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains  results for "${PRODUCT_NAME}"
    click link  css=#result_0 a.s-access-detail-page
    wait until page contains  Back to search results for "${PRODUCT_NAME}"
    click button  id=add-to-cart-button
    wait until page contains  Cart subtotal (1 item)
    click link  css=#hlb-ptc-btn-native
    page should contain button  id=signInSubmit
    element text should be  id=createAccountSubmit  Create your Amazon account
    close browser



*** Keywords ***
