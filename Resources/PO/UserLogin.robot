*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EMAIL_INPUT} =    xpath=//input[@type='email']
${PASSWORD_INPUT} =    name=password


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element    ${EMAIL_INPUT}

Enter User Creator Credentials
    [Arguments]    ${UserData}
    Fill Email    ${UserData.Email}
    Click Button    xpath=//*[@id="identifierNext"]/div/button
    Sleep    5s
    Fill Password    ${UserData.Password}
    Click Button    xpath=//*[@id="passwordNext"]/div/button
    Sleep    5s
    Click Button    xpath=//*[@id="submit_approve_access"]/div/button

Fill Email
    [Arguments]    ${Email}
    Input Text    ${EMAIL_INPUT}    ${Email}

Fill Password
    [Arguments]    ${Password}
    Input Text    ${PASSWORD_INPUT}    ${Password}