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
    
    # 2. उस नीले बटन पर क्लिक करें जो रास्ते में आ रहा है
    ClickText          Check Availability
    Sleep              2s
    
    # 3. नीचे स्क्रॉल करें जहाँ असली रूम्स हैं
    ScrollTo           Rooms
    Sleep              2s
    
    # 4. 🔥 अंतिम सुधार: बिना किसी टेक्स्ट पर निर्भर रहे, सीधे बटन क्लास को टारगेट करें
    ${room_count}=     GetElementCount    xpath\=//button[contains(@class, 'btn-primary') and contains(text(), 'Book')]
    LogToConsole       Room Count is: ${room_count}