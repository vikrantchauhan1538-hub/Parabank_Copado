*** Settings ***
Documentation           Restful Booker Platform - Easy Track
Library                 QWeb
Suite Setup             Open Browser        ${URL}    chrome
Suite Teardown          Close Browser


#*** Variables *** already put under Configuration 
#${URL}        https://automationintesting.online

*** Test Cases ***
TS_012:  Open the site and verify the title
    [Documentation]    Verify functionality where user navigate to Website and verify title 
    [Tags]             smoke        positive
    GoTo               ${URL}
    