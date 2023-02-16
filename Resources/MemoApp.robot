*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/Login.robot
Resource    ./PO/UserLogin.robot


*** Keywords ***
Navigate To Login Page
    Login.Navigate To Login
    Login.Verify Login page
    Login.Click Sign In With Google

Login Using Creator Account
    [Arguments]    ${UserData}
    UserLogin.Enter User Creator Credentials    ${UserData}

