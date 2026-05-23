*** Settings ***
Documentation             Count Room card
Library                   QWeb
Suite Setup               open Browser     https://automationintesting.online/    chrome
Suite Teardown            Close Browser


*** Test Cases ***

TS_014: Count and Verify Room Cards Are Present
    [Documentation]       Verify funciotnality to count room
    [Tags]                sanity           positive
    Verifytext            Rooms
    Clicktext             Rooms
    ${room_count}=     GetElementCount    Book this room
   Log                 Room Count: ${room_count}
    
