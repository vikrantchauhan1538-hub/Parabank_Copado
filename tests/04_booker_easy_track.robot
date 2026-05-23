*** Settings ***
Documentation           Restful Booker Platform - Easy Track
Library                 QWeb
Suite Setup             Open Browser        ${URL}    chrome
Suite Teardown          Close Browser
