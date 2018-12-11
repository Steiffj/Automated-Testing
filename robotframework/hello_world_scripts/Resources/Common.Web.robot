*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser    about:blank    ${BROWSER}
    
End Web Test
    Close Browser

Insert Test Data
    Log    Inserting test data...
    
Remove Test Data
    Log    Removing test data...