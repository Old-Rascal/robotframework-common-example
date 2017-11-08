*** Settings ***
Documentation  Dialogs standard library
Library  Selenium2Library
Library  Dialogs

Test Setup  open browser  about:blank  ${BROWSER}
Test Teardown  close browser

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
Test Case 1
    Check if Python web site is up and running

Test Case 2
    Check if Robot web site is up and running

Test Case 3
    Find Keyword in Robot Framework User Guid

*** Keywords ***
Check if Python web site is up and running
    [Documentation]  This is Python site test
    [Tags]  python
    # Get Browser slection for the user (just Windows have IE browser)
    ${new_browser} =  Get Selection From User  Which browser?  chrome  ie
    Set Global Variable  ${BROWSER}  ${new_browser}
    go to  https://www.python.org
    wait until page contains  Python

Check if Robot web site is up and running
    [Documentation]  This is Robot site test
    [Tags]  robot
    # Let user to execute manual steps
    Execute Manual Step  Please wait me a moment !  I had wait a moment !
    go to  http://www.robotframework.org
    wait until page contains  Robot Framework
    # Just stop execution
    Pause Execution

Find Keyword in Robot Framework User Guid
    [Documentation]  This is Robot User Guide test
    [Tags]  robotuser
    go to  http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html
    ${keyword} =  Get Value From User  What word must be on this page  Robot
    wait until page contains  ${keyword}
    #    ${username} =  Get Value From User  Input user name  admin
    #    ${password} =  Get Value From User  Input password   admin
    #    log  ${username}&${password}

