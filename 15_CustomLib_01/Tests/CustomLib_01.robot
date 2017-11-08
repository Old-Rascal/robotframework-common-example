*** Settings ***
Documentation    If the complex logic, the use of robots can not be resolved, you can use Python to deal with

Library  ../Library/CustomLib_01.py

*** Test Cases ***
CustomLib Test Case 1
    hello world
    print my name  ELeven
    account info
    account info  root  root

