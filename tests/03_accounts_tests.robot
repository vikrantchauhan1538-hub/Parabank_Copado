*** Settings ***
Documentation                   ParaBank Automation - Open New Account Suite
Library                         QWeb
Suite Setup                     Open New Browser Session
Suite Teardown                  Close Browser

*** Variables ***
${BANK_URL}                     https://parabank.parasoft.com/parabank/index.htm
${VALID_USER}                   vikrant_automate_3023
${VALID_PASS}                   SecurePass@2026


*** Keywords ***
Open New Browser Session
    Open Browser                ${BANK_URL}                 chrome
    TypeText                    username                    ${VALID_USER}
    TypeText                    password                    ${VALID_PASS}
    ClickText                   Log in
    #VerifyText                  Accounts Overview


*** Test Cases ***
TS_09: Navigate to Open New Account 
    [Documentation] Verify functionality where user navigate to order new account page
    [Tags]                      positive
    ClickText                   Open New Account
    VerifyText                  Open New Account
    VerifyText                  What type of Account would you like to open?

TS_10: successfully created Open New Account
    [Documentation]             Verify functioanlity where Open new Account has been successfully Created
    [Tags]                      positive
    DropDown                    type                        SAVINGS
    DropDown                    type                        CHECKING
    ClickButton                 OPEN NEW ACCOUNT            anchor=LOG OUT
    VerifyText          Congratulations, your new account is now open.
    VerifyText          Your new account number:

TS_11: Verfiy Account number : 
    [Documentation]    Verify functionality where Account number should be created.
    [Tags]             positive
    ClickCell          nenewAccountId
    VerifyText         Account Details