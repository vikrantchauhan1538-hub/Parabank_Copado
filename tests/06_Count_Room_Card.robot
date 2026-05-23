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
    
    # 2. अगर सामने कोई पॉप-अप या बटन 'Rooms' को रोक रहा है, तो सीधे Rooms टेक्स्ट पर क्लिक करने का दबाव डालें
    ClickText          Rooms
    
    # 3. 3 सेकंड का वेट दें ताकि पेज स्क्रॉल होकर नीचे आए और रूम कार्ड्स लोड हों
    Sleep              3s
    ${room_count}=     GetElementCount    Book this room
    LogToConsole       Room Count is: ${room_count}                
    
