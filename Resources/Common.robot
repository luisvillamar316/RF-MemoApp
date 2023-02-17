*** Settings ***
Library    SeleniumLibrary
Resource   MemoApp.robot


*** Keywords ***
Begin Web Test
    Open Browser    about:blank    ${BROWSER}
    maximize browser window
    MemoApp.Navigate To Login Page
    Sleep    5s
    MemoApp.Login Using Creator Account    ${CREATOR}
    Sleep    20s

End Web Test
    Close Browser