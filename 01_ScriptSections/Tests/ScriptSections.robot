*** Settings ***
Documentation  This is some basic info about the whole suite

Library  Selenium2Library

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
Test Case 1
    Check if Python web site is up and running

Test Case 2
    Check if Robot web site is up and running

Test Case 3
    Check if GitHub Web Site is up and running

*** Keyword ***
Check if Python web site is up and running
    [Documentation]  This is python site test
    [Tags]  python
    Open Browser  https://www.python.org/  ${BROWSER}
    Wait Until Page Contains  Python
    Close Browser

Check if Robot web site is up and running
    [Documentation]  This is robot site test
    [Tags]  robot
    Open Browser  http://robotframework.org/  ${BROWSER}
    Wait Until Page Contains  Robot Framework
    Close Browser

Check if GitHub Web Site is up and running
    [Documentation]  This is robot site test
    ...
    [Tags]  GitHub
    Open Browser  https://github.com/OlgaKuklina  ${BROWSER}
    Wait Until Page Contains  Olga Kuklina
    Close Browser