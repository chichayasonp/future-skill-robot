*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify OTP Page Displayed
    Wait Until Page Contains    ${OTP_MESSAGE}    10s