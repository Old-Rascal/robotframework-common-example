*** Settings ***
Library  ../Library/CustomLib_02.py

# Call the class  initializer __init__
Library  CustomLib_02.MathLib  15  15
Library  CustomLib_02.CustomLib

*** Test Cases ***
CustomLib Test Case 1
    hello world
    print my name  ELeven
    account info
    account info  root  root



CustomLib Test Case 2
    ${product} =  multiplication compute
    Log  ${product}

