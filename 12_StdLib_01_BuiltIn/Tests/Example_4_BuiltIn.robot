*** Settings ***
Documentation    example for builtln
Library  Selenium2Library

*** Variables ***
${GLOBAL_VARIABLE}  This is a global variable

*** Test Cases ***
Test Case 1
    [Documentation]  Variable Scope & Set Variables

    ${var_1} =  set variable  This is the first test variable
    set test variable  ${var_2}  This is the second test variable

#   Available in all test case  in this current settings suite
    set suite variable  ${suite_var}  This is the suite variable

#   Global Available in all test and all suites
    set global variable  ${global_var}  this is the global variable

Test Case 2
    [Tags]  Builtin
    comment  ${undeclared_var}  # Don't throw an error
    comment  just something
    comment  ${GLOBAL_VARIABLE}

    Log  something log to report
    Log Many  First line   Second line  Third line
    Log to console  Checking if the test is going from the terminal
    log variables                # Log all the variables in the scope. Good for debuging
    Log  ${suite_var}
    Log  ${global_var}

Test Case 3
    [Documentation]  Continue on failuer of a test case
    ...             This case will be fail
    [Tags]  Builtin
    open browser  https://www.google.com  chrome
    run keyword and continue on failure  Wait until page contains  Python on google
    Log  ${suite_var}
    Log  ${global_var}
    close browser


Test Case 4
    [Documentation]  repeat run keyword
    repeat keyword  3 times  Say Something

*** Keywords ***
Say Something
    log  something log to report....
