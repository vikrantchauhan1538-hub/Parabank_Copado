*** Settings ***
Documentation                   ParaBank Automation - Open New Account Suite
Library                         QWeb
Suite Setup                     Open New Browser Session
Suite Teardown                  Close Browser

*** Variables ***
${BANK_URL}                     https://parabank.parasoft.com/parabank/index.htm
${VALID_USER}                   vikrant_automate_3089
${VALID_PASS}                   SecurePass@2026


*** Keywords ***
Open New Browser Session
    Open Browser                ${BANK_URL}                 chrome
    TypeText                    username                    ${VALID_USER}
    TypeText                    password                    ${VALID_PASS}
    ClickText                   Log in
    #VerifyText                  Accounts Overview


*** Test Cases ***
*** Test Cases ***
TS_09: Navigate to Open New Account 
    [Documentation]    Verify functionality where user navigate to order new account page
    [Tags]             positive
    ClickText          Open New Account
    VerifyText         Open New Account
    VerifyText         What type of Account would you like to open?

TS_10: successfully created Open New Account
    [Documentation]    Verify functionality where Open new Account has been successfully Created
    [Tags]             positive
    ClickText          Open New Account
    

    DropDown    type    SAVINGS
    DropDown    type    CHECKING
    ClickText    Open New Account        anchor=Log Out
    VerifyText         Account Opened!
    VerifyText         Congratulations, your new account is now open.
    VerifyText         Your new account number:

TS_11: Verify Account number
    [Documentation]    Verify functionality where Account number should be created.
    [Tags]             positive
    ClickText          Your new account number:        anchor=1
    VerifyText         Account Details
    DropDown    type    SAVINGS
    DropDown    type    CHECKING
    ClickText    Open New Account
    ClickText    newAccountId                        
    DropDown    month    January
    DropDown    transactionType    Credit
    ClickText    Go
    ClickText    Accounts Overview
    
