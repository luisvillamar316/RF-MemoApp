*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TCOE_BAU_TITLE} =    xpath=//h4[contains(text(), 'BAU')]
${TCOE_CHANGE_TITLE} =    xpath=//h4[contains(text(), '- Change Request')]
${TCOE_DEVIATION_TITLE} =    xpath=//h4[contains(text(),'TCoE Deviation Form')]
${TCOE_CLOSEOUT_TITLE} =    xpath=//h4[contains(text(),'Closeout')]
${TCOE_MONTHLY_TITLE} =    xpath=//h4[contains(text(),'Monthly')]

*** Keywords ***
Verify BAU Title
    scroll element into view    ${TCOE_BAU_TITLE}

Click BAU Title
    click element    ${TCOE_BAU_TITLE}

Verify Change Request Title
    scroll element into view    ${TCOE_CHANGE_TITLE}

Verify Deviation Request Title
    scroll element into view    ${TCOE_DEVIATION_TITLE}

Verify Closeout Report Title
    scroll element into view    ${TCOE_CLOSEOUT_TITLE}

Verify Monthly Report Title
    scroll element into view    ${TCOE_MONTHLY_TITLE}