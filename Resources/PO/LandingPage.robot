*** Settings ***
Library  Selenium2Library

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  css=#loginLogo>img
${LANDING_USERNAME_TEXTBOX} =  css=input[name='user']
${LANDING_PASSWORD_TEXTBOX} =  css=input[name='password']
${LANDING_GUEST_BUTTON} =  css=input[value='Guest Login']

*** Keywords ***
Navigate To
    go to  ${URL}

Verify Page Loaded
    wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}

Sign In
    Enter Credentials
    click button  ${LANDING_GUEST_BUTTON}

Enter Credentials
    input text  ${LANDING_USERNAME_TEXTBOX}  test
    input password  ${LANDING_PASSWORD_TEXTBOX}  test
