*** Settings ***
Resource    ../Resources/MemoApp.robot
Resource    ../Resources/Common.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test

*** Variables ***
${ENVIRONMENT} =    prod
${BROWSER} =    chrome
&{URL}    prod=https://globe-alpha-memo.web.app/
&{CREATOR}    Email=rpa-techno-prod-2@globe.com.ph    Password=Test12345_Pass!
&{APPROVER}    Email=rpa-techno-prod-7@globe.com.ph    Password=Test12345_Pass!
&{WATCHER}    Email=rpa-techno-prod-6@globe.com.p    Password=Test12345_Pass!


*** Test Cases ***
#Should be able to view login page
#    [Tags]    landing
#    MemoApp.Navigate To Login Page
#    Sleep    5s
#    MemoApp.Login Using Creator Account    ${CREATOR}
#    Sleep    5s

Should locate Home Page Elements
    [Tags]    landing
    MemoApp.Verify Home Page Elements
    Sleep    5s



