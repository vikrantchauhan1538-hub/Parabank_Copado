*** Settings ***
Documentation             Count Room card
Library                   QWeb
Suite Setup               open Browser     https://automationintesting.online/    chrome
Suite Teardown            Close Browser


*** Test Cases ***

TS_014: Count and Verify Room Cards Are Present
    [Documentation]       Verify funciotnality to count room
    [Tags]                sanity           positive
   Sleep                 3s

    ${room_count}=        GetElementCount    xpath=//div[@class='row room']
    LogToConsole          Room Count is: ${room_count}