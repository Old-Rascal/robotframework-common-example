*** Settings ***
Documentation    String variables example

Library  String

*** Variables ***
${EMAIL_ADDRESS}  example@gmail.com

*** Test Cases ***
Test Case 1
    ${str_length} =  get length  ${EMAIL_ADDRESS}
    log  ${str_length}
    @{splite_str} =  Split String  ${EMAIL_ADDRESS}  @
    log  ${splite_str}
    ${sub_str} =  Get Substring	 ${EMAIL_ADDRESS}  0  7
    log  ${sub_str}



*** Keywords ***
