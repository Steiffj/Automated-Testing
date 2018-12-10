*** Settings ***
Documentation  Basic info about a test suite
Library  SeleniumLibrary

*** Variables ***

# The test cases below act as an example of how not to write a test.
# Many steps are repetitive and the steps themselves are too low-level for anyone to get a sense of what they are meant to accomplish at a glance.

*** Test Cases ***
Simpy load a web page
    [Documentation]    Example test information
    [Tags]    Smoke
    Open Browser    https://www.amazon.com    firefox
    Close Browser
 
User can search for a product
    [Documentation]    A user can search for a product on the home page
    [Tags]    Smoke
    Open Browser    https://www.amazon.com    firefox
    Wait Until Page Contains    Your Amazon.com
    Input Text    id=twotabsearchtextbox    FiiO FH5
    Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains    results for "FiiO FH5"
    Close Browser

User can view search results
    [Documentation]    A user can view more details for a particular search result
    [Tags]    Smoke
    Open Browser    https://www.amazon.com    firefox
    Wait Until Page Contains    Your Amazon.com
    Input Text    id=twotabsearchtextbox    FiiO FH5
    Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains    results for "FiiO FH5"
    Click Link    css=#result_0 a.s-access-detail-page
    Wait Until Page Contains    Back to search results
    Close Browser

# AmazonImproved.robot improves on this test case by breaking it out into reusable keywords 
User must sign in to check out
	[Documentation]    When a user adds an item to their cart and proceeds to checkout, they must log in before continuing. 
	...    This often doesn't work and it's a really brittle script in the first place.
	[Tags]    Smoke
	Open Browser    https://www.amazon.com    firefox
	Wait Until Page Contains    Your Amazon.com
	Input Text    id=twotabsearchtextbox    FiiO FH5
	Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
	Wait Until Page Contains    results for "FiiO FH5"
	Click Link    css=#result_0 a.s-access-detail-page
	Wait Until Page Contains    Back to search results
	Click Button    id=add-to-cart-button
	Wait Until Page Contains    No Thanks
	Click Button    css=#a-popover-6 > div > header > button
	Wait Until Page Contains    Added to Cart
	Click Link    Proceed to Checkout
	Page Should Contain Element    ap_signin1a_pagelet_title
	Element Text Should Be    ap_signin1a_pagelet_title    Sign In
	Close Browser
        
*** Keywords ***
