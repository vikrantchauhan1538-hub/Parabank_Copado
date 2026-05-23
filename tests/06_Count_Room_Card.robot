*** Settings ***
Documentation             Count Room card
Library                   QWeb
Suite Setup               open Browser     https://automationintesting.online/    chrome
Suite Teardown            Close Browser


*** Test Cases ***

TS_014: Count and Verify Room Cards Are Present
    [Documentation]       Verify funciotnality to count room
    [Tags]                sanity           positive
    GOTO                  https://automationintesting.online/#rooms
    Sleep              2s
    
    # 4. अब सही बटन का काउंट निकालें
    ${room_count}=     GetElementCount    Book this room
    LogToConsole       Room Count is: ${room_count}                
    
