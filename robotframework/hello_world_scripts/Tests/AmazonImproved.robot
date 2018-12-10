*** Settings ***
Documentation    An improved version of the Amazon.robot test script.
Library    SeleniumLibrary

*** Test Cases ***
User must sign in to check out
    [Documentation]    When a user adds an item to their cart and proceeds to checkout, they must log in before continuing.
    [Tags]    Smoke
    Begin Web Test
    Search for Products
    Select Product from Search Results
    Add Product to Cart
    Begin Checkout
    End Web Test
    
*** Keywords ***
Begin Web Test
    Open Browser    about:blank    chrome
    
Search for Products
    Go To    https://www.amazon.com
    Wait Until Page Contains    Your Amazon.com
	Input Text    id=twotabsearchtextbox    FiiO FH5
	Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
	Wait Until Page Contains    results for "FiiO FH5"
    
Select Product from Search Results
    Click Link    css=#result_0 a.s-access-detail-page
	Wait Until Page Contains    Back to search results
    
Add Product to Cart
    Click Button    id=add-to-cart-button
	Wait Until Page Contains    No Thanks
	Sleep    2s
	Click Element    xpath://*[@id="a-popover-6"]/div/header/button
	Wait Until Page Contains    Added to Cart
    
Begin Checkout
    Click Link    css=#hlb-ptc-btn-native
    Page Should Contain    Sign in
	
End Web Test
    Close Browser