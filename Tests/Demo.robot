# @author Mayur Jain
# Date : 8/28/2018
*** Settings ***
Documentation  Works with different browsers, No Custom Code, Easily Maintainable with Page Objects,
...    Generates output.xml which can be intergrated with test management tool like JIRA, Generate Snapshots
...    on failures.
Resource  ../Resources/DemoApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/Demo.robot

*** Variables ***
${BROWSER} =  ie           # firefox      # chrome
${URL} =  http://slidehosting.com/Login.php

*** Test Cases ***
Should be able to access "Home" page
    [Documentation]  This is test 1
    [Tags]  test1
    Log    The test was run using ${BROWSER} browser
    DemoApp.Go to Landing Page
    DemoApp.Do Sign In
    DemoApp.Go to Home Page