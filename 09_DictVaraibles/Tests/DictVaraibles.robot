*** Settings ***
Documentation    Dictionary variable  example

Library  Collections

*** Variables ***
&{GLOBAL_USER}  name=root  password=abc123

*** Test Cases ***
Test Case 1
    log  &{GLOBAL_USER}[name]
    log  &{GLOBAL_USER}[password]

Test Case 2
    log  ${GLOBAL_USER.name}
    log  ${GLOBAL_USER.password}
Test Case 3
    &{new_dict} =  create dictionary
    Set To Dictionary  ${new_dict}   language=python  framework=robot
    log  ${new_dict}

