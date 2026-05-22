*** Settings ***
Documentation        ParaBank Automation - Open New Account Suite
Library               QWeb
Suite Setup           Open New Browser Session
Suite Teardown        Close Browser

*** Variables ***
${BANK_URL}            https://parabank.parasoft.com/parabank/index.htm
${VALID_USER}          vikrant_automate_3020
${VALID_PASS}          SecurePass@2026  