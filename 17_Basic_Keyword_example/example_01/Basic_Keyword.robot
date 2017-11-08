*** Settings ***
Documentation    Basic Robotframework keyword
Library  Collections

*** Variables ***


*** Test Cases ***
Test Keyword
#    Keyword To Print STH
#    Keyword Set Variables
#    Keyword Catenate Object
#    Keyword Defind Collections
#    Keyword Time Operation
#    Keyword If Conditions
    Keyword For Loop

*** Keywords ***
Keyword To Print STH
#   print sth
    Log  This is keyword to print some info to log page
    Log To Console  This is keyword to print some info to terminal
    Log Many  Many Info
Keyword Set Variables
#    defined variable
    ${Local_Variable} =  Set Variable  ELEVEN
    Log  ${Local_Variable}
    Log To Console  ${Local_Variable}
    Set Suite Variable  ${Suite_Variable}  Suite ELEVEN
    Log  ${Suite_Variable}
    Log To Console  ${Suite_Variable}
    Set Global Variable  ${Global_Variable}  Global_ELEVEN
    Log  ${Global_Variable}
    Log To Console  ${Global_Variable}
Keyword Catenate Object
#   Catenate Object   (keyword <catenate> can catenate many object  )
    ${object}  Catenate  HELLO  ELEVEN
#    Log  ${object}
#    Log To Console  ${object}

#    SEPARATOR= (splite object )
    ${new_object}    Catenate    SEPARATOR=***    HELLO    ELEVEN    Robot    like    you
    Log  ${new_object}

Keyword Defind Collections
     @{d_list} =  Create List
#     put data to list  (need Library : Collections)
    Append To List  ${d_list}  ELEVEN
    Append To List  ${d_list}  Learning
    Append To List  ${d_list}  Robot
    Log List  ${d_list}

    &{d_dict} =  Create Dictionary
    Set To Dictionary  ${d_dict}  name=ELEVEN
    Set To Dictionary  ${d_dict}  todo=Learning
    Set To Dictionary  ${d_dict}  sth=Robot
    Log Dictionary  ${d_dict}

Keyword Time Operation
#    ${now_time} =  get time
#    Log  ${now_time}
#   print format local time
#    Log To Console  ${now_time}

    ${t1} =  Get Time  seconds
    Sleep  5s
    ${t2} =  Get Time  seconds
    ${time_} =  Evaluate  ${t1}-${t2}
    Log  ${time_}

Keyword If Conditions
    ${score} =  Set Variable  75
    Run Keyword If  ${score} >= 90  Log  Good
    ...   ELSE IF   ${score} >= 60 and ${score} <= 90  Log  Middle
    ...   ELSE IF   ${score} <= 60  Log  Bad

Keyword For Loop
#    :FOR    ${i}    IN RANGE    10
#    \    Log  ${i}
    @{d_list} =  Create List
    Append To List  ${d_list}  ELEVEN
    Append To List  ${d_list}  Learning
    Append To List  ${d_list}  Robot


#   first way
#    :FOR	${item}	IN	@{d_list}
#    \    Log  ${item}
#   second way
#    ${list_len} =  Get Length  ${d_list}
#    :FOR    ${index}    IN RANGE    ${list_len}
#    \    Log  ${index}
#    \    Log  @{d_list}[${index}]
#
    :FOR  ${index}  ${item}  IN ENUMERATE  @{d_list}
    \   Log  ${index}
    \   Log  ${item}

comment   this is one line comment
