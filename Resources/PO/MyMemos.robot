*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${MY_MEMOS_TITLE} =    xpath=//div[@class='w-full']/div[contains(text(),'My memos')]

*** Keywords ***
Verify My Memo Page Title
    wait until element is visible    ${MY_MEMOS_TITLE}

Verify Created Memo is Present
    [Arguments]    ${InputData}
    scroll element into view    xpath=//td[contains(text(), "${InputData.Subject}")]
