*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/RegisterPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser



*** Test Cases ***
As a User, I need to input all the valid data to success the registeration
    When user register to future skill platform with ${email} and ${name} and ${surname} and ${phonenumber} and ${password} and ${password} 
    Then future skill should display display validate register Succeeds message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    