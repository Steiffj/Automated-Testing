*** Settings ***
Documentation  Basic info about a test suite
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Simpy load a web page
    [Documentation]    Example test information
    [Tags]    Smoke
    Open Browser    https://www.amazon.com    firefox
    Close Browser
    
User must sign in to check out
        [Documentation]    When user adds an item to their cart and proceeds to checkout, they must log in before continuing. 
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
        Wait Until Page Contains    Add to your order
        Click Button    id=siNoCoverage-announce
        Wait Until Page Contains    Added to Cart
        Click Link    Proceed to Checkout
        Page Should Contain Element    ap_signin1a_pagelet_title
        Element Text Should Be    ap_signin1a_pagelet_title    Sign In
        Close Browser
        
*** Keywords ***
