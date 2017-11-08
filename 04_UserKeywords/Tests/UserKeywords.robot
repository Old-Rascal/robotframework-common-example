*** Settings ***
Documentation  How to use KW  example
Library  Selenium2Library

Suite Setup  Log  Start to do something
Suite Teardown  Log  Finished to do something

Test Setup  open browser  about:blank  ${BROWSER}
Test Teardown  close browser

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
Check if Python web site is up and running
    [Documentation]  This is Python site test
    [Tags]  python
    Test Python site

Check if Robot web site is up and running
    [Documentation]  This is Robot site test
    [Tags]  robot
    Test Robot site

*** Keywords ***
Test Python site
    go to  https://www.python.org
    wait until page contains  Python

Test Robot site
    go to  http://www.robotframework.org
    wait until page contains  Robot Framework