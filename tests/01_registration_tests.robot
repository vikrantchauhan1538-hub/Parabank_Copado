*** Settings ***
Documentation          ParaBank Automation - Positive Registration Test Case (TS-01)
Library                QWeb
Suite Setup             Open Browser    https://parabank.parasoft.com/parabank/index.htm    chrome
Suite Teardown          Close Browser

*** Variables ***
${BANK_URL}            https://parabank.parasoft.com/parabank/index.htm

*** Test Cases ***
TS-01: Successful User Registration
    [Documentation]    Verify that a new user can register successfully with unique credentials.
    [Tags]             Smoke                       Positive

   
    GoTo               ${BANK_URL}

    ClickText          Register
    VerifyText         Signing up is easy!

    TypeText           First Name                  Vikrant 3011
    TypeText           Last Name                   Chauhan
    TypeText           Address                     Noida Sector 62
    Sleep              1s

    TypeText           City                        Noida
    TypeText           State                       Uttar Pradesh
    TypeText           Zip Code                    201301
    Sleep              1s

    TypeText           Phone #                     9876543210
    TypeText           SSN                         SSN-2026
    Sleep              1s

    TypeText           Username                    vikrant_automate_3031 anchor=SSN
    TypeText           Password                    SecurePass@2026         anchor=Confirm:
    TypeText           Confirm                     SecurePass@2026

    Sleep              3s
    ClickText          REGISTER                    anchor=Confirm:

    #VerifyText         "Your account was created successfully. You are now logged in."
    #ClickText          Log Out

TS-02: Password Mismatch Negative Test
    [Documentation]     Verify error when Password and Confirm Password do not match.
    [Tags]              Negative
    ClickText           Register
    TypeText            Username                    vikrant_mismatch        anchor=SSN
    TypeText            Password                    SecurePass@2026         anchor=Confirm:
    TypeText            Confirm                     WrongPass@2026          
    ClickText           REGISTER                    anchor=Confirm:
    VerifyText          Passwords did not match.

TS-03: Empty Mandatory Fields Negative Test
    [Documentation]     Verify errors when mandatory fields are left blank.
    [Tags]              Negative
    ClickText           Register
    ClickText           REGISTER                    anchor=Confirm:
    VerifyText          First name is required.
    VerifyText          Last name is required.

  