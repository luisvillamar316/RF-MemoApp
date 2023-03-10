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
&{INPUT_TEXT}    Name=test-luis    Subject=test-luis    Approver=luis.villamar@globe.com.ph


*** Test Cases ***
Should locate Home Page Elements
    [Tags]    Smoke
    MemoApp.Verify Home Page Elements
    Sleep    5s

Should be able to view Create Memo Page
    [Tags]    Smoke
    MemoApp.Go to Create Memo Page
    Sleep    5s

Should be able to locate TCOE Elements
    [Tags]    Smoke
    MemoApp.Verify Create Memo Page Elements
    Sleep    5s

Should be able to view TCOE BAU page
    [Tags]    Smoke
    MemoApp.Go to TCOE BAU Request Page
    Sleep    5s

Should be able to submit TCOE BAU memo and verify memo
    [Tags]    Smoke
    MemoApp.Submit a TCOE BAU Service Request    ${INPUT_TEXT}
    sleep    5s

Cleanup
    MemoApp.Cancel Created Memo
