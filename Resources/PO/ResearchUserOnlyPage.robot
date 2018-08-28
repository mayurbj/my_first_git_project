*** Settings ***
Library  Selenium2Library

*** Variables ***
${RUO_CONTINUE_BUTTON} =  css=.btn
${RUO_NAVIGATION_ELEMENT} =  css=#disclaimer>p

*** Keywords ***
Click Continue
    click button  ${RUO_CONTINUE_BUTTON}

Verify Page Loaded
    wait until page contains element  ${RUO_NAVIGATION_ELEMENT}

