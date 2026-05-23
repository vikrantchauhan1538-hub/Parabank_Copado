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
    Clicktext          Rooms
    
    # 3. 2 सेकंड का वेट दें ताकि सारे रूम कार्ड्स और बटन पूरी तरह लोड हो जाएं
    Sleep              2s
    
    # 4. अब सही बटन का काउंट निकालें
    ${room_count}=     GetElementCount    Book this room
    LogToConsole       Room Count is: ${room_count}                
    
