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
    
    # 2. 🚀 जादुई कीवर्ड: नीचे 'Rooms' टेक्स्ट तक स्क्रॉल करें ताकि सारे रूम कार्ड्स लोड हो जाएं
    ScrollTo           Rooms
    Sleep              2s
    
    # 3. अब एडवांस XPath लोकेटर से छिपे हुए बटनों को गिनें
    ${room_count}=     GetElementCount    xpath\=//button[contains(text(),'Book this room')]
    
    # 4. इसे कंसोल में प्रिंट करें
    LogToConsole       Room Count is: ${room_count}
