*** Settings ***
Documentation    Number variables example

*** Variables ***
${NUM1}  10
${NUM2}  3

*** Test Cases ***
Test Case 1
#    +
    ${num_addition} =  evaluate  ${NUM1}+${NUM2}
    log  ${num_addition}
#    -
    ${num_subtraction} =  evaluate  ${NUM1}-${NUM2}
    log  ${num_subtraction}
#    *
    ${num_multiplication} =  evaluate  ${NUM1}*${NUM2}
    log  ${num_multiplication}
#    /
    ${num_division} =  evaluate  ${NUM1}/${NUM2}
    log  ${num_division}