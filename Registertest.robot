*** Settings ***
Library     SeleniumLibrary
Resource    ../Pages/HomePage.robot
Resource    ../Pages/LoginPage.robot
Resource    ../pages/RegisterPage.robot
Resource    ../Pages/OtpPage.robot

Resource    ../resources/Variables.robot

*** Test Cases ***
1. Open Future Skill Website
    Open Browser    https://app.futureskill.co/login   chrome
    Maximize Browser Window

2. User can register Future Skill successfully (Step 1-5)
    # Step 1: Open register page
    Open Browser    https://app.futureskill.co/register    chrome
    Maximize Browser Window

    # Step 2: Fill register form
    Wait Until Element Is Visible    css:input[placeholder="อีเมล"]    15s
    Input Text    css:input[placeholder="อีเมล"]    testuser@email.com

    Input Text    css:input[placeholder="ชื่อ"]        Test
    Input Text    css:input[placeholder="นามสกุล"]    User
    Input Text    css:input[placeholder="เบอร์โทรศัพท์"]    0812345678

    Input Text    css:input[placeholder="รหัสผ่าน"]         Test@1234
    Input Text    css:input[placeholder="ยืนยันรหัสผ่าน"]  Test@1234

    Click Element    css:input[type="checkbox"]

    # Step 3: Submit register
    Wait Until Element Is Visible    css:button[type="submit"]    10s
    Click Element    css:button[type="submit"]

3. The system display Verify OTP page
    # Step 4-5: Verify OTP page
    Wait Until Page Contains    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์    15s

    Sleep    3s
    Close Browser