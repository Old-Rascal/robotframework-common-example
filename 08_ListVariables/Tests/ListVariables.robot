*** Settings ***
Documentation    List variables example

Library  Collections

*** Variables ***
# Global Scalr
${GLOBAL_SCALAR}  The global scalar

# Global List
@{GLOBAL_LIST}  I  am  Eleven


*** Test Cases ***
Test Case 1
    Log  @{GLOBAL_LIST}[0]
    Log  @{GLOBAL_LIST}[1]
    Log  @{GLOBAL_LIST}[2]

Test Case 2
    # Local Variable
    # Set Variable can be a new list
    @{new_list} =  Set Variable  This  is  a  new  list
    Log  @{new_list}[0]
    Log  @{new_list}[1]
    Log  @{new_list}[2]
    Log  @{new_list}[3]
    Log  @{new_list}[4]

Test Case 3
    @{created_new_list} =  create list
    append to list  ${created_new_list}  My  Name  is  Eleven
    Log  @{created_new_list}[0]
    Log  @{created_new_list}[1]
    Log  @{created_new_list}[2]
    Log  @{created_new_list}[3]

Test Case 4
    [Documentation]  List loop  with not index

    :For  ${item}  in  @{GLOBAL_LIST}
    \    log  ${item}

Test Case 5
    [Documentation]  List loop  with index

    ${list_length} =  get length  ${GLOBAL_LIST}
    :FOR  ${index}  IN RANGE  0  ${list_length}
    \    log  @{GLOBAL_LIST}[${index}]


Dynamically Change Variable
    Log  ${GLOBAL_SCALAR}
    ${GLOBAL_SCALAR} =  set variable  now i changed the value
    Log  ${GLOBAL_SCALAR}



