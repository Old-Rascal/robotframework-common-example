*** Settings ***
Documentation  Test Setup & Test teardown example
Library  Selenium2Library

Suite Setup  open browser  about:blank  ${BROWSER}
Suite Teardown  close browser


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
    go to  https://www.python.org
    wait until page contains  Python
	[Teardown]  The First Teardown

Check if Robot web site is up and running
    [Documentation]  This is Robot site test
    [Tags]  robot
    go to  http://www.robotframework.org
    wait until page contains  Robot Framework
	[Teardown]  The Second Teardown

The First Teardown
	Log  The First Teardown
	
The Second Teardown
	Log  The First Teardown