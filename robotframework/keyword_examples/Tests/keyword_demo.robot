*** Settings ***

*** Test Cases ***
Test case 1
    Do Something
    Do Something Else
    
Test case 2
    Do Another Thing
    Do Something Else

*** Keywords ***
Do Something
    Log    Something is happening!
    
Do Something Else
    Log    Something else is happening!
    
Do Another Thing
    Log   Another thing is happehing!