*** Settings ***
Documentation  Passing Variables to user defined Keywords
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
Passing Scalar Variables
    Begin Web Test With Scalar  https://www.python.org  chrome

Passing List Variables
    @{list_url_browser} =  Create List  https://www.python.org  chrome
    Begin Web Test With List  @{list_url_browser}

Passing Dict Variables
    &{dict_url_browser} =  create dictionary  url=https://www.python.org  browser=chrome
    Begin Web Test With Dict  &{dict_url_browser}

*** Keywords ***
Begin Web Test With Scalar
    [Arguments]   ${url}  ${browser}
    open browser  ${url}  ${browser}
    close browser

Begin Web Test With List
    [Arguments]  @{url_browser_list}
    open browser  @{url_browser_list}[0]  @{url_browser_list}[1]
    close browser

Begin Web Test With Dict
    [Arguments]  &{url_browser_dict}

    open browser  &{url_browser_dict}[url]  &{url_browser_dict}[browser]
    close browser