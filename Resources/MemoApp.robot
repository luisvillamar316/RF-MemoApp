*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/Login.robot
Resource    ./PO/UserLogin.robot
Resource    ./PO/Homepage.robot
Resource    ./PO/CreateMemo.robot
Resource    ./PO/ServiceRequest.robot


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

Go to Create Memo Page
    Homepage.Click Create Memo Button
    sleep    5s
    Homepage.Verify Create Memo Message

Verify Create Memo Page Elements
    Homepage.Click Create Memo Button
    sleep    5s
    CreateMemo.Verify BAU Title
    sleep    2s
    CreateMemo.Verify Change Request Title
    sleep    2s
    CreateMemo.Verify Deviation Request Title
    sleep    2s
    CreateMemo.Verify Closeout Report Title
    sleep    2s
    CreateMemo.Verify Monthly Report Title

Go to TCOE BAU Request Page
    Homepage.Click Create Memo Button
    sleep    7s
    CreateMemo.Verify BAU Title
    sleep    5s
    CreateMemo.Click BAU Title
    sleep    5s
    ServiceRequest.Verify BAU Service Message
    sleep    2s
    ServiceRequest.Verify Project Name Wildcard
    sleep    2s
    ServiceRequest.Verify Subject Wildcard
    sleep    2s
    ServiceRequest.Verify Submit Button
    sleep    2s
    ServiceRequest.Click Submit Button
    sleep    2s
    ServiceRequest.Verify Required Fields



