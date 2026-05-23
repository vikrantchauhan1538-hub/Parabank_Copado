*** Settings ***
Documentation     Veify Text and Exercise 2
Library           QWeb
Suite Setup       open Browser     https://automationintesting.online/    chrome
Suite Teardown    Close Browser

*** Test Cases ***

TS_013: Verify Welcome Heading and Intro Text
    [Documentation]    Verify functionality where user try to navigate in Website and verify Welcome heading and Text
    [Tags]             smoke         positive
    VerifyText         Welcome to Shady Meadows B&B
    VerifyTitle        Restful-booker-platform demo
    VerifyText         All our rooms have comfortable beds and we provide breakfast from the locally sourced supermarket.
    #VerifyElement      Check In
    VerifyText         Rooms
    