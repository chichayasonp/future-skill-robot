*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Open Future Skill Website
    Open Browser    ${https://app.futureskill.co/login}    ${Chrome}
    Maximize Browser Window

Click Register Hyperlink
    Wait Until Element Is Visible    xpath=//*[contains(normalize-space(.),"คลิกเพื่อสมัครสมาชิก")]    10s
    Scroll Element Into View         xpath=//*[contains(normalize-space(.),"คลิกเพื่อสมัครสมาชิก")]
    Click Element                    xpath=//*[contains(normalize-space(.),"คลิกเพื่อสมัครสมาชิก")]
