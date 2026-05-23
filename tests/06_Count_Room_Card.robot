*** Settings ***
Documentation             Count Room card
Library                   QWeb
Suite Setup               open Browser     https://automationintesting.online/    chrome
Suite Teardown            Close Browser


*** Test Cases ***

TS_014: Count and Verify Room Cards Are Present
    [Documentation]       Verify funciotnality to count room
    [Tags]                sanity           positive
  Sleep              3s
    
    # 2. बिना किसी झंझट के सीधे शुद्ध XPath (बिना बैकस्लैश के)
    ${room_count}=     GetElementCount    //*[@id="rooms"]/div/div[2]
    
    # 3. काउंट प्रिंट करें
    LogToConsole       Room Count is: ${room_count}