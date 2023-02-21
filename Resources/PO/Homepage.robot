*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CREATE_MEMO} =    xpath=//button[contains(@data-testid, "create")]
${WELCOME} =    xpath=//div[contains(text(), "Welcome")]
${MY_MEMOS} =    xpath=//p[contains(text(), "My memos")]
${FOR_MY_APPROVAL} =    xpath=//p[contains(text(), "For my approval")]
${MEMOS_TO_WATCH} =    //p[contains(text(), "Memos to watch")]
${VIEW_ALL_MEMOS_MY_MEMOS} =    xpath=//a[contains(@href, "memos/active")]
${VIEW_ALL_MEMOS_FOR_MY_APPROVAL} =    xpath=//a[contains(@href, "/approvals")]/div
${VIEW_ALL_MEMOS_MEMOS_TO_WATCH} =    xpath=//a[contains(@href, "/watch")]/div
${CREATE_MEMO_MESSAGE} =    //div[contains(text(), 'Create')]
${DASHBOARD} =    //li/div[contains(text(),'Dashboard')]
${CREATED_MEMO} =    //div/p[contains(text(),'luis')]

*** Keywords ***
Verify Create Memo Button
    element should be visible    ${CREATE_MEMO}

Click Create Memo Button
    click element    ${CREATE_MEMO}

Verify Create Memo Message
    element should be visible    ${CREATE_MEMO_MESSAGE}

Verify Welcome Message
    element should be visible    ${WELCOME}

Verify My Memos
    element should be visible    ${MY_MEMOS}

Verify For My Approval
    element should be visible    ${FOR_MY_APPROVAL}

Verify Memos To Watch
    element should be visible    ${MEMOS_TO_WATCH}

Scroll Page Down
    execute javascript    window.scrollTo(0,1500)

Verify View All Memos My Memos
    element should be visible    ${VIEW_ALL_MEMOS_MY_MEMOS}

Verify View All Memos For My Approval
    element should be visible    ${VIEW_ALL_MEMOS_FOR_MY_APPROVAL}

Verify View All Memos Memos to Watch
    element should be visible    ${VIEW_ALL_MEMOS_MEMOS_TO_WATCH}

Click Dashboard Button
    click element    ${DASHBOARD}

Verify Created Memo
    scroll element into view    ${CREATED_MEMO}

Cancel Memo
    click element   ${CREATED_MEMO}
    sleep    5s
    scroll element into view    xpath=//button[contains(text(),'Cancel Memo')]
    click element    xpath=//button[contains(text(),'Cancel Memo')]
    sleep    5s
    click element    xpath=//button[contains(text(),'Proceed')]
    sleep    5s
    wait until element is visible    xpath=//div[contains(text(),'Memo cancelled')]

