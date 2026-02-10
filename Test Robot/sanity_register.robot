*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open register page and type email
    Open Browser    https://app.futureskill.co/register    chrome
    Maximize Browser Window

    Wait Until Element Is Visible    css:input[placeholder="อีเมล"]    15s
    Input Text    css:input[placeholder="อีเมล"]    test@email.com

    Sleep    3s
    Close Browser