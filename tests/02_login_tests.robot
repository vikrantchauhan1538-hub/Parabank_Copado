*** Settings ***
Documentation           ParaBank Automation - Login & Session Management Suite
Library                 QWeb
Suite Setup             Open Browser    https://parabank.parasoft.com/parabank/index.htm    chrome
Suite Teardown          Close Browser

*** Variables ***
${VALID_USER}           vikrant_automate_900
${VALID_PASS}           SecurePass@2026
${INVALID_USER}         wrong_vikrant_999
${INVALID_PASS}         WrongPass123

*** Test Cases ***

TS-04: Successful Login with Valid Credentials
    [Documentation]     Verify that a registered user can log in successfully.
    TypeText            username                    ${VALID_USER}
    TypeText            password                    ${VALID_PASS}
    ClickText           Log In                      anchor=password
    VerifyText          Accounts Overview
    ClickText           Log out

TS-05: Login Fails with Invalid Password
    [Documentation]     Verify that login fails when the password is incorrect.
    TypeText            username                    ${VALID_USER}
    TypeText            password                    ${INVALID_PASS}
    ClickText           Log In                      anchor=password
    VerifyText          The username and password could not be verified.

TS-06: Login Fails with Non-Existing Username
    [Documentation]     Verify that an unregistered user cannot log in.
    TypeText            username                    ${INVALID_USER}
    TypeText            password                    ${VALID_PASS}
    ClickText           Log In                      anchor=password
    VerifyText          The username and password could not be verified.

TS-07: Login Fails with Empty Username and Password
    [Documentation]     Verify error handling when login fields are left blank.
    ClickText           Log In                      anchor=password
    VerifyText          Please enter a username and password.

TS-08: Successful Logout Functionality
    [Documentation]     Verify that a user can log out successfully.
    TypeText            username                    ${VALID_USER}
    TypeText            password                    ${VALID_PASS}
    ClickText           Log In                      anchor=password
    VerifyText          Accounts Overview
    ClickText           Log out
    VerifyText          Customer Login
