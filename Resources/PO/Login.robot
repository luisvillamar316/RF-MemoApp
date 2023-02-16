*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${LOGIN_TEXT} =    Sign in with Google

*** Keywords ***
Navigate To Login
    Go To    ${URL.${ENVIRONMENT}}

Verify Login page
    Wait Until Page Contains    ${LOGIN_TEXT}

Click Sign In With Google
    Click Button    xpath=//*[@id="root"]//button

