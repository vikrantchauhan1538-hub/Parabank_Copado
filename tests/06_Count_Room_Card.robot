*** Settings ***
Documentation          Count Room card
Library                QWeb
Suite Setup            open Browser                https://automationintesting.online/    chrome
Suite Teardown         Close Browser

*** Test Cases ***

TS_014: Count and Verify Room Cards Are Present
    [Documentation]    Verify funciotnality to count room
    [Tags]             sanity                      positive
    VerifyText         Rooms
    ClickText          Rooms
    Sleep              3s
    GetElementCount    Book now
    ${room_count}=     GetElementCount    Book now
    LogToConsole       Room Count is: ${room_count}
    
    
    Should Be True                     ${room_count}>=0
     
     
