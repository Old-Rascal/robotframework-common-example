*** Settings ***
Library  ../Library/CustomLib_04_01.py
Library  ../Library/CustomLib_04_02.py

*** Variables ***

*** Test Cases ***
My Custom Lib 1 Test
    My Keyword
    #My Private Keyword

My Custom Lib 2 Test
    My Keyword 1
    My Keyword 2
    #My Keyword 3

*** Keywords ***
