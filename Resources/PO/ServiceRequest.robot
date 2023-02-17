*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${BAU_SERVICE_REQUEST} =    xpath=//div[contains(text(), "BAU")]
${PROJECT_NAME_WILDCARD} =    xpath=//div/label[contains(text(), "Project Name")]/span
${SUBJECT_WILDCARD} =    xpath=//div/label[contains(text(), "Subject")]/span
${SUBMIT_BUTTON} =    submit
${REQUIRED_FIELD} =    xpath=//p[contains(text(), 'This')]

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

