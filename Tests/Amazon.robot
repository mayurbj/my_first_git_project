*** Settings ***
Documentation  This is basic info about the whole suite
Library  Selenium2Library   # declaring the library

*** Variables ***


*** Test Cases ***
The user must sign in to checkout    #name of the test case
    [Documentation]  User must see sign in page after clicking Proceed to Checkout
    [Tags]  Smoke     #helps in selecting what tests to run
    [Setup]  Open Browser  http://www.amazon.com  firefox   #got it from keywords documentation of Selenium2 library. You can change the browser you want here
    Wait Until Page Contains  Your Amazon.com      #checking if the page loaded successfully
    Input Text  id=twotabsearchtextbox  Ferrari 458                                               # writing the pre-conditions
    Click Button  xpath=//div[@class="nav-search-submit nav-sprite"]/input[@class='nav-input']
    Wait Until Page Contains  results for "Ferrari 458"    #checking if we are in search results page
    Click link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results    #checking if we are in detailed page of link we chose
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart       #checking if we are in Checkout page

    #writing the test case
    Click Link  Proceed to checkout (1 item)
    Page Should Contain Element  css=h1.a-spacing-small
    Element Text Should Be  css=h1.a-spacing-small  Sign in

    #writing the post-condition
    [Teardown]  Close Browser

*** Keywords ***



#manual test case
#preconditions
#Action                                               Expected
#1. user searches for product               Search results page loads succesfully and contain 1 or more products
#2. User adds product to shopping cart      shopping cart loads and selected product existing in shopping cart

#steps
#Action                                               Expected
#1. User clicks "Proceed to Checkout" button     sign in page loads successfully

#post conditions
#Action                                               Expected
#1. user closes the browser                 1. browser is closed.*** Keywords ***
