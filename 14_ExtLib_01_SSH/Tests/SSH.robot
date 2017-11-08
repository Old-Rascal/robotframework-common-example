*** Settings ***
Documentation  SSH to remote host and check for specific file content
Library  SSHLibrary

Test Setup  Open Connection and Log In
Test Teardown  Close All Connections

*** Variables ***
${HOST}  10.0.0.6
${USER}  root
${PASSWORD}  rootroot

*** Test Cases ***
Execute Command on Remote Host
    ${output}=  Execute Command  cat  anaconda-ks.cfg
    Log  ${output}
    should contain  ${output}  crashkernel=auto

*** Keywords ***
Open Connection and Log In
    Open Connection  ${HOST}
    Login  ${USER}  ${PASSWORD}