*** Settings ***
Documentation          Restful Booker Platform - Easy Track
Library                QWeb
Suite Setup            Open Browser      https://automationintesting.online    chrome
Suite Teardown         Close Browser


#*** Variables *** already put under Configuration
#${URL}                https://automationintesting.online

*** Test Cases ***
TS_012:  Open the site and verify the title
    [Documentation]    Verify functionality where user navigate to Website and verify title
    [Tags]             smoke             positive
    #GOTO              ${{URL}}
    Sleep               3s
    VerifyTitle         'Restful-booker-platform demo'