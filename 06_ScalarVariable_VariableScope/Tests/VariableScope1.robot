*** Settings ***
Documentation    Variable Scope example 1
Resource  ../Resources/GlobalSettings.robot


*** Variables ***
# Suite Variables
${MY_NAME_IS}  My name is Eleven
${NAME}  Eleven

*** Test Cases ***
Print Variable Values
    log  ${MY_NAME_IS}
    log  ${NAME}
    log  ${THE_GLOBAL_VARIABLE}

Print Suite Variable Values 1
    ${new_variable_1} =  set variable  This is the first new variable
    log  ${new_variable_1}
    log  ${THE_GLOBAL_VARIABLE}

Print Suite Variable Values 2
    ${new_variable_2} =  set variable  This is the second new variable
    log  ${new_variable_2}
#    KW: set variable's scope just the case or KW
#    log  ${new_variable_1}
    log  ${THE_GLOBAL_VARIABLE}

Print Suite variable Values 3
     ${new_variable_3} =  set variable  This is the third variable
     log  ${new_variable_3}
     log  ${THE_GLOBAL_VARIABLE}



*** Keywords ***
Keywords Variable 1
    ${kw_variable} =  set variable  This is a kw variable
    log  ${kw_variable}
#    here is an  error  is :  Variable definition not found less... | Then the kw will be not pass
#    log  ${new_variable_1}
    log  ${THE_GLOBAL_VARIABLE}
