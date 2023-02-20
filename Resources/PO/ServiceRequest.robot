*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${BAU_SERVICE_REQUEST} =    xpath=//div[contains(text(), "BAU")]
${PROJECT_NAME_WILDCARD} =    xpath=//div/label[contains(text(), "Project Name")]/span
${SUBJECT_WILDCARD} =    xpath=//div/label[contains(text(), "Subject")]/span
${SUBMIT_BUTTON} =    submit
${REQUIRED_FIELD} =    xpath=//p[contains(text(), 'This')]
${PROJECT_NAME_BOX} =    id=mi8qnavlRGYLc2QFDCTzU
${SUBJECT_BOX} =    xpath=//*[@id='TEXT_SUBJECT']
${APPROVER_BOX} =    xpath=//input[contains(@name, "pro")]
${UPLOAD} =    xpath=//div[@class='w-full h-auto flex flex-col']/button
${SUBMIT_MESSAGE} =    xpath=//div[contains(text(),'Your memo has been submitted')]
${CONFIRM_BUTTON} =    xpath=//div[@data-testid='modal-content']/div/button
${APPROVER_RESULT} =    xpath=//div[contains(@data-email, "luis")]

*** Keywords ***
Verify BAU Service Message
    wait until element is visible    ${BAU_SERVICE_REQUEST}

Verify Project Name Wildcard
    scroll element into view    ${PROJECT_NAME_WILDCARD}

Verify Subject Wildcard
    scroll element into view    ${SUBJECT_WILDCARD}

Verify Submit Button
    scroll element into view    ${SUBMIT_BUTTON}

Click Submit Button
    click element    ${SUBMIT_BUTTON}

Verify Required Fields
    @{REQUIRED_LIST} =    Get WebElements    ${REQUIRED_FIELD}
    @{EMPTY_LIST} =    create list
    FOR    ${REQUIRED_TEXT}   IN    @{REQUIRED_LIST}
        ${ALERT} =    get text  ${REQUIRED_TEXT}
        append to list    ${EMPTY_LIST}    ${ALERT}
    END
    log to console    ${EMPTY_LIST}

Fill out TCOE BAU Service Request
    [Arguments]    ${InputData}
    scroll element into view    ${PROJECT_NAME_BOX}
    Fill Project Name    ${InputData.Name}
    sleep    2s
    scroll element into view    ${SUBJECT_BOX}
    Fill Subject    ${InputData.Subject}
    sleep    2s
    scroll element into view    ${APPROVER_BOX}
    Fill Approver    ${InputData.Approver}
    sleep    5s
    click element    ${APPROVER_RESULT}


Fill Project Name
    [Arguments]    ${Name}
    Input Text      ${PROJECT_NAME_BOX}    ${Name}

Fill Subject
    [Arguments]    ${Subject}
    Input Text    ${SUBJECT_BOX}    ${Subject}

Fill Approver
    [Arguments]    ${Approver}
    Input Text    ${APPROVER_BOX}    ${Approver}

Click Upload Button
    click element    ${UPLOAD}

Choose file to upload
    Choose file    ${UPLOAD}    C://development/robot-scripts/MemoApp/File/hello.txt.zip
    wait until element is visible    //p[contains(text(),'hello.txt.zip')]

Verify Submitted Message
    wait until element is visible    ${SUBMIT_MESSAGE}

Click Confirmed Button
    click element    ${CONFIRM_BUTTON}

