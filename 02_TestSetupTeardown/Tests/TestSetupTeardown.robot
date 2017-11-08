*** Settings ***
Documentation    Test Setup & Test Teardown example
Library  Selenium2Library

Test Setup  Open Browser  about:blank  ${BROWSER}
Test Teardown   Close All Browsers

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
Test Case 1
    Check if Python web site is up and running

Test Case 2
    Check if Robot web site is up and running

*** Keywords ***
Check if Python web site is up and running
    [Documentation]  This is Python site test
    [Tags]  python
    Go To  https://www.python.org
    wait until page contains  Python

Check if Robot web site is up and running
    [Documentation]  This is Robot site test
    [Tags]  robot
    go to  http://www.robotframework.org
    wait until page contains  Robot Framework