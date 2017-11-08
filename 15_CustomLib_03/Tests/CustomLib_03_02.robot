*** Settings ***
Library  ../Library/CustomLib_03.py
Library  CustomLib_03.TestLib
Library  CustomLib_03.SuitLib
Library  CustomLib_03.GlobalLib

*** Variables ***

*** Test Cases ***
Repeat 1 Testing the TEST LIB
    test count
    test count

Repeat 2 Testing the TEST LIB
    test count
    test count
    clear test counter
    test count

Repeat 3 Testing the SUIT LIB
    suit count
    suit count

Repeat 4 Testing the SUIT LIB
    suit count
    suit count
    clear suit counter
    suit count

Repeat 5 Testing the GLOBAL LIB
    global count
    global count

Repeat 6 Testing the GLOBAL LIB
    global count
    global count
    clear global counter
    global count