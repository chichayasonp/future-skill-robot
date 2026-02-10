*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Future Skill Website
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Click Register Button
    Wait Until Element Is Visible    xpath=//*[contains(normalize-space(.),"สมัครสมาชิก")]    10s
    Scroll Element Into View         xpath=//*[contains(normalize-space(.),"สมัครสมาชิก")]
    Click Element                    xpath=//*[contains(normalize-space(.),"สมัครสมาชิก")]
