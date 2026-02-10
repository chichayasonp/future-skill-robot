*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/Variables.robot

*** Keywords ***
Fill Register Form
    Wait Until Element Is Visible    css:input[placeholder="อีเมล"]    10s
    Input Text    css:input[placeholder="อีเมล"]    ${EMAIL}

    Input Text    css:input[placeholder="ชื่อ"]        ${FIRSTNAME}
    Input Text    css:input[placeholder="นามสกุล"]    ${LASTNAME}
    Input Text    css:input[placeholder="เบอร์โทรศัพท์"]    ${PHONE}

    Input Text    css:input[placeholder="รหัสผ่าน"]         ${PASSWORD}
    Input Text    css:input[placeholder="ยืนยันรหัสผ่าน"]  ${PASSWORD}

    Click Element    css:input[type="checkbox"]

Submit Register
    Wait Until Element Is Visible    css:button[type="submit"]    10s
    Click Element    css:button[type="submit"]
