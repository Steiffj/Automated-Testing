*** Settings ***
Documentation  Basic info about a test suite
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Simpy load a web page
    [Documentation]    Opens Google
    [Tags]    Smoke
    Open Browser    https://www.google.com    chrome
    Log Title
    Close Browser
        
*** Keywords ***