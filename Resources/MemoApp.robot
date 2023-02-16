*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/Login.robot
Resource    ./PO/UserLogin.robot
Resource    ./PO/Homepage.robot


*** Keywords ***
Navigate To Login Page
    Login.Navigate To Login
    Login.Verify Login page
    Login.Click Sign In With Google

Login Using Creator Account
    [Arguments]    ${UserData}
    UserLogin.Enter User Creator Credentials    ${UserData}


Verify Home Page Elements
    Homepage.Verify Create Memo Button
    Homepage.Verify Welcome Message
    Homepage.Verify My Memos
    Homepage.Verify For My Approval
    Homepage.Verify Memos To Watch
    Homepage.Scroll Page Down
    Homepage.Verify View All Memos My Memos
    Homepage.Verify View All Memos For My Approval
    Homepage.Verify View All Memos Memos to Watch
