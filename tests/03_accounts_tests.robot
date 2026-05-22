*** Settings ***
Documentation       ParaBank Automation - Open New Account Suite
Library             QWeb
Suite Setup         Open New Browser Session
Suite Teardown      Close Browser

*** Variables ***
${BANK_URL}         https://parabank.parasoft.com/parabank/index.htm
${VALID_USER}       vikrant_automate_3020
${VALID_PASS}       SecurePass@2026


*** Keywords ***
Open New Browser Session
    Open Browser    ${BANK_URL}                 chrome
    TypeText        username                    ${VALID_USER}
    TypeText        password                    ${VALID_PASS}
    ClickText       Log in
    VerifyText      Accounts Overview


*** Test Cases ***
TS_09: Navigate to Open New Account 
    [Documentation] Verify functionality where user navigate to order new account page
    [Tags]            positive
