*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to search results

Add to Cart
    Click Button  id=add-to-cart-button
    
Decline Offer
    Wait Until Page Contains    No Thanks
	Sleep    2s
	Click Element    xpath://*[@id="a-popover-6"]/div/header/button