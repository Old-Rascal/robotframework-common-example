*** Settings ***
Library  ../Library/CustomLib.py
Resource  ../Resource/CustomKeywords.robot

*** Variables ***

*** Test Cases ***
Custom Lib Test
    hello world
    print my name  ELeven
    account info
    account info  root  root


Custom Keyword Test
    Test Python site
    Test URL for a given keyword  http://www.robotframework.org  Robot Framework

*** Keywords ***