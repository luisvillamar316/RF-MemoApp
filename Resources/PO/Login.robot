*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${LOGIN_TEXT} =    //p[contains(text(),'Sign in with Google')]

*** Keywords ***
Navigate To Login
    Go To    ${URL.${ENVIRONMENT}}

Verify Login page
    Wait Until Element Is Visible    ${LOGIN_TEXT}

Click Sign In With Google
    Click Button    xpath=//*[@id="root"]//button[@text='Sign in with Google']

