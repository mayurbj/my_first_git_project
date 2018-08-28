*** Settings ***
Library  Selenium2Library

*** Variables ***
${HOME_NAVIGATION_ELEMENT} =  xpath=//a[contains(@href,'Welcome')]/img

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${HOME_NAVIGATION_ELEMENT}